using CFD
using Documenter

DocMeta.setdocmeta!(CFD, :DocTestSetup, :(using CFD); recursive=true)

makedocs(;
    modules=[CFD],
    authors="Yuta Iwatani",
    repo="https://github.com/iwatani/CFD.jl/blob/{commit}{path}#{line}",
    sitename="CFD.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://iwatani.github.io/CFD.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/iwatani/CFD.jl",
    devbranch="main",
)

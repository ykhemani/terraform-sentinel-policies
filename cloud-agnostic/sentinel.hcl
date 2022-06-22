module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "tfrun-functions" {
    source = "../common-functions/tfrun-functions/tfrun-functions.sentinel"
}

policy "allowed-providers" {
    source = "./allowed-providers.sentinel"
    enforcement_level = "advisory"
}

policy "allowed-provisioners" {
    source = "./allowed-provisioners.sentinel"
    enforcement_level = "advisory"
}

policy "allowed-resources" {
    source = "./allowed-resources.sentinel"
    enforcement_level = "advisory"
}

policy "limit-cost-and-percentage-increase" {
    source = "./limit-cost-and-percentage-increase.sentinel"
    enforcement_level = "advisory"
}

policy "limit-cost-by-workspace-name" {
    source = "./limit-cost-by-workspace-name.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "limit-proposed-monthly-cost" {
    source = "./limit-proposed-monthly-cost.sentinel"
    enforcement_level = "advisory"
}

policy "require-all-modules-have-version-constraint" {
    source = "./require-all-modules-have-version-constraint.sentinel"
    enforcement_level = "advisory"
}

policy "require-all-providers-have-version-constraint" {
    source = "./require-all-providers-have-version-constraint.sentinel"
    enforcement_level = "advisory"
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int build_component_ref (int ,int ) ;
 int build_indirect_ref (int ,char*) ;
 int get_identifier (char*) ;

tree
build_byref_local_var_access (tree expr, tree decl_name)
{
  tree exp = build_component_ref (expr, get_identifier ("__forwarding"));
  exp = build_indirect_ref (exp, "unary *");
  exp = build_component_ref (exp, decl_name);
  return exp;
}

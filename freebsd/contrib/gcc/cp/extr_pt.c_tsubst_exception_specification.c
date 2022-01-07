
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsubst_flags_t ;
typedef scalar_t__ tree ;


 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_RAISES_EXCEPTIONS (scalar_t__) ;
 scalar_t__ add_exception_specifier (scalar_t__,scalar_t__,int ) ;
 scalar_t__ error_mark_node ;
 scalar_t__ tsubst (int ,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static tree
tsubst_exception_specification (tree fntype,
    tree args,
    tsubst_flags_t complain,
    tree in_decl)
{
  tree specs;
  tree new_specs;

  specs = TYPE_RAISES_EXCEPTIONS (fntype);
  new_specs = NULL_TREE;
  if (specs)
    {
      if (! TREE_VALUE (specs))
 new_specs = specs;
      else
 while (specs)
   {
     tree spec;
     spec = tsubst (TREE_VALUE (specs), args, complain, in_decl);
     if (spec == error_mark_node)
       return spec;
     new_specs = add_exception_specifier (new_specs, spec, complain);
     specs = TREE_CHAIN (specs);
   }
    }
  return new_specs;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CLASSTYPE_VTABLES (scalar_t__) ;
 int CLASS_TYPE_P (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TYPE_ATTRIBUTES (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 scalar_t__ TYPE_METHODS (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 int gcc_assert (int ) ;
 scalar_t__ lookup_attribute (char*,int ) ;
 int maybe_add_dllimport (scalar_t__) ;

void
i386_pe_adjust_class_at_definition (tree t)
{
  tree member;

  gcc_assert (CLASS_TYPE_P (t));




  if (lookup_attribute ("dllimport", TYPE_ATTRIBUTES (t)) == NULL_TREE)
    return;
  for (member = TYPE_FIELDS (t); member; member = TREE_CHAIN (member))
    if (TREE_CODE (member) == VAR_DECL)
      maybe_add_dllimport (member);


  for (member = TYPE_METHODS (t); member; member = TREE_CHAIN (member))
    if (TREE_CODE (member) == FUNCTION_DECL)
      maybe_add_dllimport (member);


  for (member = CLASSTYPE_VTABLES (t); member; member = TREE_CHAIN (member))
    if (TREE_CODE (member) == VAR_DECL)
      maybe_add_dllimport (member);





}

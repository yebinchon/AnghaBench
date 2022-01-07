
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ TYPE_P (scalar_t__) ;
 scalar_t__ TYPE_STUB_DECL (scalar_t__) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;

tree
get_type_decl (tree t)
{
  if (TREE_CODE (t) == TYPE_DECL)
    return t;
  if (TYPE_P (t))
    return TYPE_STUB_DECL (t);
  gcc_assert (t == error_mark_node);
  return t;
}

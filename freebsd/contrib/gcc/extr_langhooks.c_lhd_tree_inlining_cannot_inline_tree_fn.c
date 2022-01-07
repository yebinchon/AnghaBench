
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_ATTRIBUTES (int ) ;
 scalar_t__ flag_really_no_inline ;
 int * lookup_attribute (char*,int ) ;

int
lhd_tree_inlining_cannot_inline_tree_fn (tree *fnp)
{
  if (flag_really_no_inline
      && lookup_attribute ("always_inline", DECL_ATTRIBUTES (*fnp)) == ((void*)0))
    return 1;

  return 0;
}

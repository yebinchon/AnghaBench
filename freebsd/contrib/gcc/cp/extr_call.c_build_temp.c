
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int * diagnostic_fn_t ;


 int NULL_TREE ;
 int build_special_member_call (int ,int ,int ,int ,int) ;
 int build_tree_list (int ,int ) ;
 int complete_ctor_identifier ;
 int * error ;
 int errorcount ;
 int * warning0 ;
 int warningcount ;

__attribute__((used)) static tree
build_temp (tree expr, tree type, int flags,
     diagnostic_fn_t *diagnostic_fn)
{
  int savew, savee;

  savew = warningcount, savee = errorcount;
  expr = build_special_member_call (NULL_TREE,
        complete_ctor_identifier,
        build_tree_list (NULL_TREE, expr),
        type, flags);
  if (warningcount > savew)
    *diagnostic_fn = warning0;
  else if (errorcount > savee)
    *diagnostic_fn = error;
  else
    *diagnostic_fn = ((void*)0);
  return expr;
}

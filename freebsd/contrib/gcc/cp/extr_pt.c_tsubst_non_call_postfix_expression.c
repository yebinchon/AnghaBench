
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsubst_flags_t ;
typedef int tree ;


 scalar_t__ SCOPE_REF ;
 scalar_t__ TREE_CODE (int ) ;
 int tsubst_copy_and_build (int ,int ,int ,int ,int,int) ;
 int tsubst_qualified_id (int ,int ,int ,int ,int,int) ;

__attribute__((used)) static tree
tsubst_non_call_postfix_expression (tree t, tree args,
        tsubst_flags_t complain,
        tree in_decl)
{
  if (TREE_CODE (t) == SCOPE_REF)
    t = tsubst_qualified_id (t, args, complain, in_decl,
                 0, 0);
  else
    t = tsubst_copy_and_build (t, args, complain, in_decl,
                         0,
                                             0);

  return t;
}

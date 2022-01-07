
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int EH_SPEC_RAISES (int ) ;
 int EH_SPEC_STMTS (int ) ;
 int NULL_TREE ;
 int build_call (int ,int ) ;
 int build_exc_ptr () ;
 int call_unexpected_node ;
 int gimple_build_eh_filter (int ,int ,int ) ;
 int gimplify_stmt (int *) ;
 int tree_cons (int ,int ,int ) ;

__attribute__((used)) static void
genericize_eh_spec_block (tree *stmt_p)
{
  tree body = EH_SPEC_STMTS (*stmt_p);
  tree allowed = EH_SPEC_RAISES (*stmt_p);
  tree failure = build_call (call_unexpected_node,
        tree_cons (NULL_TREE, build_exc_ptr (),
     NULL_TREE));
  gimplify_stmt (&body);

  *stmt_p = gimple_build_eh_filter (body, allowed, failure);
}

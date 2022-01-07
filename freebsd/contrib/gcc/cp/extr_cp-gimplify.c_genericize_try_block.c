
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CLEANUP_P (int ) ;
 int TRY_CATCH_EXPR ;
 int TRY_HANDLERS (int ) ;
 int TRY_STMTS (int ) ;
 int build2 (int ,int ,int ,int ) ;
 int gimplify_stmt (int *) ;
 int void_type_node ;

__attribute__((used)) static void
genericize_try_block (tree *stmt_p)
{
  tree body = TRY_STMTS (*stmt_p);
  tree cleanup = TRY_HANDLERS (*stmt_p);

  gimplify_stmt (&body);

  if (CLEANUP_P (*stmt_p))
                                                                            ;
  else
    gimplify_stmt (&cleanup);

  *stmt_p = build2 (TRY_CATCH_EXPR, void_type_node, body, cleanup);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DO_ATTRIBUTES (int ) ;
 int DO_BODY (int ) ;
 int DO_COND (int ) ;
 int DO_FOREACH (int ) ;
 int NULL_TREE ;
 int gimplify_cp_loop (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
gimplify_do_stmt (tree *stmt_p)
{
  tree stmt = *stmt_p;

  *stmt_p = gimplify_cp_loop (DO_COND (stmt), DO_BODY (stmt),
         NULL_TREE, DO_ATTRIBUTES (stmt), 0,
         DO_FOREACH (stmt));
                                                  }

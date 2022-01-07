
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_TREE ;
 int WHILE_ATTRIBUTES (int ) ;
 int WHILE_BODY (int ) ;
 int WHILE_COND (int ) ;
 int gimplify_cp_loop (int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static void
gimplify_while_stmt (tree *stmt_p)
{
  tree stmt = *stmt_p;

  *stmt_p = gimplify_cp_loop (WHILE_COND (stmt), WHILE_BODY (stmt),
         NULL_TREE, WHILE_ATTRIBUTES (stmt), 1,
         NULL_TREE);
                                                  }

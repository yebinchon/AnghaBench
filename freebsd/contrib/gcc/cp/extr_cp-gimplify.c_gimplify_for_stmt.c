
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int FOR_ATTRIBUTES (int ) ;
 int FOR_BODY (int ) ;
 int FOR_COND (int ) ;
 int FOR_EXPR (int ) ;
 scalar_t__ FOR_INIT_STMT (int ) ;
 int NULL_TREE ;
 int gimplify_and_add (scalar_t__,int *) ;
 int gimplify_cp_loop (int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static void
gimplify_for_stmt (tree *stmt_p, tree *pre_p)
{
  tree stmt = *stmt_p;

  if (FOR_INIT_STMT (stmt))
    gimplify_and_add (FOR_INIT_STMT (stmt), pre_p);


  *stmt_p = gimplify_cp_loop (FOR_COND (stmt), FOR_BODY (stmt),
         FOR_EXPR (stmt), FOR_ATTRIBUTES (stmt), 1,
         NULL_TREE);
                                                  }

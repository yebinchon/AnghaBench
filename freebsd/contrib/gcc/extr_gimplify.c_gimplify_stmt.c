
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int fb_none ;
 int gimplify_expr (int *,int *,int *,int ,int ) ;
 int is_gimple_stmt ;

void
gimplify_stmt (tree *stmt_p)
{
  gimplify_expr (stmt_p, ((void*)0), ((void*)0), is_gimple_stmt, fb_none);
}

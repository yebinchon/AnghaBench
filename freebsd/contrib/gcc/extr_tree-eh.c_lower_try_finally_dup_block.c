
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * tree ;
struct leh_state {TYPE_1__* tf; } ;
struct TYPE_2__ {int * try_finally_expr; } ;


 int collect_finally_tree (int *,int *) ;
 int * unsave_expr_now (int *) ;

__attribute__((used)) static tree
lower_try_finally_dup_block (tree t, struct leh_state *outer_state)
{
  tree region = ((void*)0);

  t = unsave_expr_now (t);

  if (outer_state->tf)
    region = outer_state->tf->try_finally_expr;
  collect_finally_tree (t, region);

  return t;
}

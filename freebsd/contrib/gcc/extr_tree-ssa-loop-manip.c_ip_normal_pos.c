
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct loop {scalar_t__ latch; } ;
typedef TYPE_1__* edge ;
typedef int * basic_block ;
struct TYPE_3__ {scalar_t__ dest; } ;


 scalar_t__ COND_EXPR ;
 TYPE_1__* EDGE_SUCC (int *,int) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ flow_bb_inside_loop_p (struct loop*,scalar_t__) ;
 int last_stmt (int *) ;
 int * single_pred (scalar_t__) ;
 int single_pred_p (scalar_t__) ;

basic_block
ip_normal_pos (struct loop *loop)
{
  tree last;
  basic_block bb;
  edge exit;

  if (!single_pred_p (loop->latch))
    return ((void*)0);

  bb = single_pred (loop->latch);
  last = last_stmt (bb);
  if (TREE_CODE (last) != COND_EXPR)
    return ((void*)0);

  exit = EDGE_SUCC (bb, 0);
  if (exit->dest == loop->latch)
    exit = EDGE_SUCC (bb, 1);

  if (flow_bb_inside_loop_p (loop, exit->dest))
    return ((void*)0);

  return bb;
}

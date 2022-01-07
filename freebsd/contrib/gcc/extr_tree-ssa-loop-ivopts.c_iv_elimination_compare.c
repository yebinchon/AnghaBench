
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct loop {int dummy; } ;
struct ivopts_data {struct loop* current_loop; } ;
struct iv_use {int stmt; } ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef TYPE_1__* edge ;
typedef int basic_block ;
struct TYPE_3__ {int flags; int dest; } ;


 TYPE_1__* EDGE_SUCC (int ,int) ;
 int EDGE_TRUE_VALUE ;
 int EQ_EXPR ;
 int NE_EXPR ;
 int bb_for_stmt (int ) ;
 scalar_t__ flow_bb_inside_loop_p (struct loop*,int ) ;

__attribute__((used)) static enum tree_code
iv_elimination_compare (struct ivopts_data *data, struct iv_use *use)
{
  struct loop *loop = data->current_loop;
  basic_block ex_bb;
  edge exit;

  ex_bb = bb_for_stmt (use->stmt);
  exit = EDGE_SUCC (ex_bb, 0);
  if (flow_bb_inside_loop_p (loop, exit->dest))
    exit = EDGE_SUCC (ex_bb, 1);

  return (exit->flags & EDGE_TRUE_VALUE ? EQ_EXPR : NE_EXPR);
}

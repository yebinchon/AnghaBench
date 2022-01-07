
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tree ;
struct loop {TYPE_1__* header; } ;
typedef int block_stmt_iterator ;
typedef TYPE_1__* basic_block ;
struct TYPE_10__ {int dest; } ;
struct TYPE_9__ {int succs; scalar_t__ aux; } ;


 scalar_t__ COND_EXPR ;
 scalar_t__ EDGE_COUNT (int ) ;
 TYPE_7__* EDGE_SUCC (TYPE_1__*,int) ;
 scalar_t__ LABEL_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int bsi_end_p (int ) ;
 int bsi_next (int *) ;
 int bsi_start (TYPE_1__*) ;
 int bsi_stmt (int ) ;
 scalar_t__ estimate_num_insns (int ) ;
 scalar_t__ flow_bb_inside_loop_p (struct loop*,int ) ;
 int gcc_assert (int) ;
 scalar_t__ get_call_expr_in (int ) ;
 int last_stmt (TYPE_1__*) ;
 int single_pred_p (TYPE_1__*) ;
 scalar_t__ single_succ_p (TYPE_1__*) ;

__attribute__((used)) static bool
should_duplicate_loop_header_p (basic_block header, struct loop *loop,
    int *limit)
{
  block_stmt_iterator bsi;
  tree last;



  if (header->aux)
    return 0;

  gcc_assert (EDGE_COUNT (header->succs) > 0);
  if (single_succ_p (header))
    return 0;
  if (flow_bb_inside_loop_p (loop, EDGE_SUCC (header, 0)->dest)
      && flow_bb_inside_loop_p (loop, EDGE_SUCC (header, 1)->dest))
    return 0;



  if (header != loop->header && !single_pred_p (header))
    return 0;

  last = last_stmt (header);
  if (TREE_CODE (last) != COND_EXPR)
    return 0;



  for (bsi = bsi_start (header); !bsi_end_p (bsi); bsi_next (&bsi))
    {
      last = bsi_stmt (bsi);

      if (TREE_CODE (last) == LABEL_EXPR)
 continue;

      if (get_call_expr_in (last))
 return 0;

      *limit -= estimate_num_insns (last);
      if (*limit < 0)
 return 0;
    }

  return 1;
}

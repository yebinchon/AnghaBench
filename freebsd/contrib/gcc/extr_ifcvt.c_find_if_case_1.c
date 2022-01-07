
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


typedef TYPE_3__* edge ;
typedef TYPE_4__* basic_block ;
struct TYPE_32__ {int flags; } ;
struct TYPE_29__ {TYPE_1__* rtl; } ;
struct TYPE_31__ {int index; struct TYPE_31__* prev_bb; struct TYPE_31__* next_bb; TYPE_2__ il; } ;
struct TYPE_30__ {TYPE_4__* dest; } ;
struct TYPE_28__ {int global_live_at_end; int global_live_at_start; } ;


 int BB_COPY_PARTITION (TYPE_4__*,TYPE_4__*) ;
 scalar_t__ BB_END (TYPE_4__*) ;
 int BRANCH_COST ;
 int COSTS_N_INSNS (int ) ;
 int EDGE_COMPLEX ;
 int EDGE_FALLTHRU ;
 TYPE_4__* EXIT_BLOCK_PTR ;
 int FALLTHRU_EDGE (TYPE_4__*) ;
 int FALSE ;
 int NULL_RTX ;
 int REG_CROSSING_JUMP ;
 int SET_BASIC_BLOCK (int,TYPE_4__*) ;
 int TRUE ;
 int bitmap_ior (int ,int ,int ) ;
 int cheap_bb_rtx_cost_p (TYPE_4__*,int ) ;
 int dead_or_predicable (TYPE_4__*,TYPE_4__*,TYPE_4__*,int ,int) ;
 int delete_basic_block (TYPE_4__*) ;
 scalar_t__ dump_file ;
 scalar_t__ find_reg_note (scalar_t__,int ,int ) ;
 scalar_t__ forwarder_block_p (TYPE_4__*) ;
 int fprintf (scalar_t__,char*,int,int) ;
 int num_possible_if_blocks ;
 int num_true_changes ;
 int num_updated_if_blocks ;
 TYPE_4__* redirect_edge_and_branch_force (int ,TYPE_4__*) ;
 int redirect_edge_succ (int ,TYPE_4__*) ;
 int single_pred_p (TYPE_4__*) ;
 int single_succ (TYPE_4__*) ;
 TYPE_6__* single_succ_edge (TYPE_4__*) ;
 int single_succ_p (TYPE_4__*) ;

__attribute__((used)) static int
find_if_case_1 (basic_block test_bb, edge then_edge, edge else_edge)
{
  basic_block then_bb = then_edge->dest;
  basic_block else_bb = else_edge->dest, new_bb;
  int then_bb_index;
  if ((BB_END (then_bb)
       && find_reg_note (BB_END (then_bb), REG_CROSSING_JUMP, NULL_RTX))
      || (BB_END (test_bb)
   && find_reg_note (BB_END (test_bb), REG_CROSSING_JUMP, NULL_RTX))
      || (BB_END (else_bb)
   && find_reg_note (BB_END (else_bb), REG_CROSSING_JUMP,
       NULL_RTX)))
    return FALSE;


  if (!single_succ_p (then_bb))
    return FALSE;


  if (single_succ_edge (then_bb)->flags & (EDGE_COMPLEX | EDGE_FALLTHRU))
    return FALSE;


  if (!single_pred_p (then_bb))
    return FALSE;


  if (forwarder_block_p (then_bb))
    return FALSE;

  num_possible_if_blocks++;
  if (dump_file)
    fprintf (dump_file,
      "\nIF-CASE-1 found, start %d, then %d\n",
      test_bb->index, then_bb->index);


  if (! cheap_bb_rtx_cost_p (then_bb, COSTS_N_INSNS (BRANCH_COST)))
    return FALSE;


  if (! dead_or_predicable (test_bb, then_bb, else_bb,
       single_succ (then_bb), 1))
    return FALSE;




  bitmap_ior (test_bb->il.rtl->global_live_at_end,
       else_bb->il.rtl->global_live_at_start,
       then_bb->il.rtl->global_live_at_end);






  if (then_bb->next_bb == else_bb
      && then_bb->prev_bb == test_bb
      && else_bb != EXIT_BLOCK_PTR)
    {
      redirect_edge_succ (FALLTHRU_EDGE (test_bb), else_bb);
      new_bb = 0;
    }
  else
    new_bb = redirect_edge_and_branch_force (FALLTHRU_EDGE (test_bb),
                                             else_bb);

  then_bb_index = then_bb->index;
  delete_basic_block (then_bb);



  if (new_bb)
    {
      new_bb->index = then_bb_index;
      SET_BASIC_BLOCK (then_bb_index, new_bb);



      BB_COPY_PARTITION (new_bb, test_bb);
    }



  num_true_changes++;
  num_updated_if_blocks++;

  return TRUE;
}

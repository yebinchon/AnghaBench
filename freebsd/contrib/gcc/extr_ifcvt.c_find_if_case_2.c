
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef TYPE_3__* edge ;
typedef TYPE_4__* basic_block ;
struct TYPE_22__ {TYPE_1__* rtl; } ;
struct TYPE_24__ {scalar_t__ index; TYPE_2__ il; } ;
struct TYPE_23__ {int flags; TYPE_4__* dest; } ;
struct TYPE_21__ {int global_live_at_end; int global_live_at_start; } ;


 scalar_t__ BB_END (TYPE_4__*) ;
 int BRANCH_COST ;
 int CDI_POST_DOMINATORS ;
 int COSTS_N_INSNS (int ) ;
 int EDGE_COMPLEX ;
 int FALSE ;
 int INTVAL (int ) ;
 int NULL_RTX ;
 scalar_t__ NUM_FIXED_BLOCKS ;
 int REG_BR_PROB ;
 int REG_BR_PROB_BASE ;
 int REG_CROSSING_JUMP ;
 int TRUE ;
 int XEXP (scalar_t__,int ) ;
 int bitmap_ior (int ,int ,int ) ;
 int cheap_bb_rtx_cost_p (TYPE_4__*,int ) ;
 int dead_or_predicable (TYPE_4__*,TYPE_4__*,TYPE_4__*,TYPE_4__*,int ) ;
 int delete_basic_block (TYPE_4__*) ;
 scalar_t__ dominated_by_p (int ,TYPE_4__*,TYPE_4__*) ;
 scalar_t__ dump_file ;
 scalar_t__ find_reg_note (scalar_t__,int ,int ) ;
 int fprintf (scalar_t__,char*,scalar_t__,scalar_t__) ;
 int num_possible_if_blocks ;
 int num_true_changes ;
 int num_updated_if_blocks ;
 int single_pred_p (TYPE_4__*) ;
 TYPE_3__* single_succ_edge (TYPE_4__*) ;
 int single_succ_p (TYPE_4__*) ;

__attribute__((used)) static int
find_if_case_2 (basic_block test_bb, edge then_edge, edge else_edge)
{
  basic_block then_bb = then_edge->dest;
  basic_block else_bb = else_edge->dest;
  edge else_succ;
  rtx note;
  if ((BB_END (then_bb)
       && find_reg_note (BB_END (then_bb), REG_CROSSING_JUMP, NULL_RTX))
      || (BB_END (test_bb)
   && find_reg_note (BB_END (test_bb), REG_CROSSING_JUMP, NULL_RTX))
      || (BB_END (else_bb)
   && find_reg_note (BB_END (else_bb), REG_CROSSING_JUMP,
       NULL_RTX)))
    return FALSE;


  if (!single_succ_p (else_bb))
    return FALSE;
  else
    else_succ = single_succ_edge (else_bb);


  if (else_succ->flags & EDGE_COMPLEX)
    return FALSE;


  if (!single_pred_p (else_bb))
    return FALSE;


  if (then_bb->index < NUM_FIXED_BLOCKS)
    return FALSE;


  note = find_reg_note (BB_END (test_bb), REG_BR_PROB, NULL_RTX);
  if (note && INTVAL (XEXP (note, 0)) >= REG_BR_PROB_BASE / 2)
    ;
  else if (else_succ->dest->index < NUM_FIXED_BLOCKS
    || dominated_by_p (CDI_POST_DOMINATORS, then_bb,
         else_succ->dest))
    ;
  else
    return FALSE;

  num_possible_if_blocks++;
  if (dump_file)
    fprintf (dump_file,
      "\nIF-CASE-2 found, start %d, else %d\n",
      test_bb->index, else_bb->index);


  if (! cheap_bb_rtx_cost_p (else_bb, COSTS_N_INSNS (BRANCH_COST)))
    return FALSE;


  if (! dead_or_predicable (test_bb, else_bb, then_bb, else_succ->dest, 0))
    return FALSE;




  bitmap_ior (test_bb->il.rtl->global_live_at_end,
       then_bb->il.rtl->global_live_at_start,
       else_bb->il.rtl->global_live_at_end);

  delete_basic_block (else_bb);

  num_true_changes++;
  num_updated_if_blocks++;




  return TRUE;
}

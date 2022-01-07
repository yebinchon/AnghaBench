
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int rtx ;
typedef TYPE_1__* edge ;
typedef TYPE_2__* basic_block ;
struct TYPE_25__ {scalar_t__ next_bb; int succs; } ;
struct TYPE_24__ {int flags; TYPE_2__* dest; } ;


 int BB_END (TYPE_2__*) ;
 scalar_t__ BB_PARTITION (TYPE_2__*) ;
 TYPE_1__* BRANCH_EDGE (TYPE_2__*) ;
 int EDGE_COUNT (int ) ;
 int EDGE_CROSSING ;
 int EDGE_FALLTHRU ;
 scalar_t__ EXIT_BLOCK_PTR ;
 TYPE_1__* FALLTHRU_EDGE (TYPE_2__*) ;
 int FORWARDER_BLOCK_P (TYPE_2__*) ;
 int INSN_UID (int ) ;
 int any_condjump_p (int ) ;
 int block_label (TYPE_2__*) ;
 int can_fallthru (TYPE_2__*,TYPE_2__*) ;
 int delete_basic_block (TYPE_2__*) ;
 scalar_t__ dump_file ;
 int fprintf (scalar_t__,char*,int,int) ;
 int invert_jump (int ,int ,int ) ;
 TYPE_1__* redirect_edge_succ_nodup (TYPE_1__*,TYPE_2__*) ;
 int single_pred_p (TYPE_2__*) ;
 TYPE_2__* single_succ (TYPE_2__*) ;
 int tidy_fallthru_edge (TYPE_1__*) ;
 int update_br_prob_note (TYPE_2__*) ;
 int update_forwarder_flag (TYPE_2__*) ;

__attribute__((used)) static bool
try_simplify_condjump (basic_block cbranch_block)
{
  basic_block jump_block, jump_dest_block, cbranch_dest_block;
  edge cbranch_jump_edge, cbranch_fallthru_edge;
  rtx cbranch_insn;


  if (EDGE_COUNT (cbranch_block->succs) != 2)
    return 0;



  cbranch_insn = BB_END (cbranch_block);
  if (!any_condjump_p (cbranch_insn))
    return 0;

  cbranch_fallthru_edge = FALLTHRU_EDGE (cbranch_block);
  cbranch_jump_edge = BRANCH_EDGE (cbranch_block);




  jump_block = cbranch_fallthru_edge->dest;
  if (!single_pred_p (jump_block)
      || jump_block->next_bb == EXIT_BLOCK_PTR
      || !FORWARDER_BLOCK_P (jump_block))
    return 0;
  jump_dest_block = single_succ (jump_block);
  if (BB_PARTITION (jump_block) != BB_PARTITION (jump_dest_block)
      || (cbranch_jump_edge->flags & EDGE_CROSSING))
    return 0;



  cbranch_dest_block = cbranch_jump_edge->dest;

  if (cbranch_dest_block == EXIT_BLOCK_PTR
      || !can_fallthru (jump_block, cbranch_dest_block))
    return 0;


  if (!invert_jump (cbranch_insn, block_label (jump_dest_block), 0))
    return 0;

  if (dump_file)
    fprintf (dump_file, "Simplifying condjump %i around jump %i\n",
      INSN_UID (cbranch_insn), INSN_UID (BB_END (jump_block)));




  cbranch_jump_edge = redirect_edge_succ_nodup (cbranch_jump_edge,
      cbranch_dest_block);
  cbranch_fallthru_edge = redirect_edge_succ_nodup (cbranch_fallthru_edge,
          jump_dest_block);
  cbranch_jump_edge->flags |= EDGE_FALLTHRU;
  cbranch_fallthru_edge->flags &= ~EDGE_FALLTHRU;
  update_br_prob_note (cbranch_block);


  delete_basic_block (jump_block);
  tidy_fallthru_edge (cbranch_jump_edge);
  update_forwarder_flag (cbranch_block);

  return 1;
}

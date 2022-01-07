
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int rtx ;
typedef int edge_iterator ;
typedef TYPE_1__* edge ;
typedef TYPE_2__* basic_block ;
struct TYPE_11__ {int prev_bb; int preds; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int flags; } ;


 scalar_t__ BARRIER_P (int ) ;
 int BB_SUPERBLOCK ;
 TYPE_8__* BLOCK_FOR_INSN (int ) ;
 int EDGE_FALLTHRU ;
 int PREV_INSN (int ) ;
 TYPE_2__* create_basic_block (int ,int ,int ) ;
 int ei_next (int *) ;
 TYPE_1__* ei_safe_edge (int ) ;
 int ei_start (int ) ;
 int emit_insn_before (int ,int ) ;
 int force_nonfallthru (TYPE_1__*) ;
 int update_bb_for_insn (TYPE_2__*) ;

__attribute__((used)) static basic_block
emit_to_new_bb_before (rtx seq, rtx insn)
{
  rtx last;
  basic_block bb;
  edge e;
  edge_iterator ei;




  for (ei = ei_start (BLOCK_FOR_INSN (insn)->preds); (e = ei_safe_edge (ei)); )
    if (e->flags & EDGE_FALLTHRU)
      force_nonfallthru (e);
    else
      ei_next (&ei);
  last = emit_insn_before (seq, insn);
  if (BARRIER_P (last))
    last = PREV_INSN (last);
  bb = create_basic_block (seq, last, BLOCK_FOR_INSN (insn)->prev_bb);
  update_bb_for_insn (bb);
  bb->flags |= BB_SUPERBLOCK;
  return bb;
}

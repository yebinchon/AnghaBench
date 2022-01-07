
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef int basic_block ;
struct TYPE_2__ {int flags; } ;


 scalar_t__ ADDR_DIFF_VEC ;
 scalar_t__ ADDR_VEC ;
 scalar_t__ BB_END (int ) ;
 int BB_HEAD (int ) ;
 scalar_t__ CALL_P (scalar_t__) ;
 int EDGE_ABNORMAL ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ JUMP_P (scalar_t__) ;
 scalar_t__ LABEL_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NONJUMP_INSN_P (scalar_t__) ;
 scalar_t__ NOTE_INSN_BASIC_BLOCK_P (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int PATTERN (scalar_t__) ;
 int REG_CC_SETTER ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 scalar_t__ emit_insn_after_noloc (scalar_t__,scalar_t__) ;
 scalar_t__ emit_insn_before_noloc (scalar_t__,scalar_t__) ;
 scalar_t__ find_first_parameter_load (scalar_t__,int ) ;
 scalar_t__ find_reg_note (scalar_t__,int ,scalar_t__) ;
 scalar_t__ prev_nonnote_insn (scalar_t__) ;
 scalar_t__ prev_real_insn (scalar_t__) ;
 scalar_t__ sets_cc0_p (int ) ;
 TYPE_1__* single_succ_edge (int ) ;
 int single_succ_p (int ) ;

rtx
insert_insn_end_bb_new (rtx pat, basic_block bb)
{
  rtx insn = BB_END (bb);
  rtx new_insn;
  rtx pat_end = pat;

  while (NEXT_INSN (pat_end) != NULL_RTX)
    pat_end = NEXT_INSN (pat_end);





  if (JUMP_P (insn)
      || (NONJUMP_INSN_P (insn)
          && (!single_succ_p (bb)
              || single_succ_edge (bb)->flags & EDGE_ABNORMAL)))
    {






      if (GET_CODE (PATTERN (insn)) == ADDR_VEC
          || GET_CODE (PATTERN (insn)) == ADDR_DIFF_VEC)
        insn = prev_real_insn (insn);
      new_insn = emit_insn_before_noloc (pat, insn);
    }



  else if (CALL_P (insn)
           && (!single_succ_p (bb)
               || single_succ_edge (bb)->flags & EDGE_ABNORMAL))
    {
      insn = find_first_parameter_load (insn, BB_HEAD (bb));
      while (LABEL_P (insn)
             || NOTE_INSN_BASIC_BLOCK_P (insn))
        insn = NEXT_INSN (insn);

      new_insn = emit_insn_before_noloc (pat, insn);
    }
  else
    new_insn = emit_insn_after_noloc (pat, insn);

  return new_insn;
}

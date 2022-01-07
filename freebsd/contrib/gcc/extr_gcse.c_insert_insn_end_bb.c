
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct expr {scalar_t__ reaching_reg; size_t bitmap_index; } ;
typedef scalar_t__ rtx ;
typedef TYPE_1__* basic_block ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {size_t index; } ;


 scalar_t__ ADDR_DIFF_VEC ;
 scalar_t__ ADDR_VEC ;
 scalar_t__ BB_END (TYPE_1__*) ;
 int BB_HEAD (TYPE_1__*) ;
 scalar_t__ CALL_P (scalar_t__) ;
 int EDGE_ABNORMAL ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ INSN_P (scalar_t__) ;
 int INSN_UID (scalar_t__) ;
 scalar_t__ JUMP_P (scalar_t__) ;
 scalar_t__ LABEL_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NONJUMP_INSN_P (scalar_t__) ;
 scalar_t__ NOTE_INSN_BASIC_BLOCK_P (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int PATTERN (scalar_t__) ;
 int REGNO (scalar_t__) ;
 int REG_CC_SETTER ;
 scalar_t__ TEST_BIT (int ,size_t) ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 int add_label_notes (int ,scalar_t__) ;
 int * antloc ;
 scalar_t__ dump_file ;
 scalar_t__ emit_insn_after_noloc (scalar_t__,scalar_t__) ;
 scalar_t__ emit_insn_before_noloc (scalar_t__,scalar_t__) ;
 scalar_t__ find_first_parameter_load (scalar_t__,int ) ;
 scalar_t__ find_reg_note (scalar_t__,int ,scalar_t__) ;
 int fprintf (scalar_t__,char*,size_t,int) ;
 int gcc_assert (int) ;
 int gcse_create_count ;
 int note_stores (int ,int ,scalar_t__) ;
 scalar_t__ prev_nonnote_insn (scalar_t__) ;
 scalar_t__ prev_real_insn (scalar_t__) ;
 scalar_t__ process_insert_insn (struct expr*) ;
 int record_set_info ;
 scalar_t__ sets_cc0_p (int ) ;
 TYPE_3__* single_succ_edge (TYPE_1__*) ;
 int single_succ_p (TYPE_1__*) ;
 int * transp ;

__attribute__((used)) static void
insert_insn_end_bb (struct expr *expr, basic_block bb, int pre)
{
  rtx insn = BB_END (bb);
  rtx new_insn;
  rtx reg = expr->reaching_reg;
  int regno = REGNO (reg);
  rtx pat, pat_end;

  pat = process_insert_insn (expr);
  gcc_assert (pat && INSN_P (pat));

  pat_end = pat;
  while (NEXT_INSN (pat_end) != NULL_RTX)
    pat_end = NEXT_INSN (pat_end);





  if (JUMP_P (insn)
      || (NONJUMP_INSN_P (insn)
   && (!single_succ_p (bb)
       || single_succ_edge (bb)->flags & EDGE_ABNORMAL)))
    {






      gcc_assert (!NONJUMP_INSN_P (insn) || !pre
    || TEST_BIT (antloc[bb->index], expr->bitmap_index)
    || TEST_BIT (transp[bb->index], expr->bitmap_index));




      if (GET_CODE (PATTERN (insn)) == ADDR_VEC
   || GET_CODE (PATTERN (insn)) == ADDR_DIFF_VEC)
 insn = prev_real_insn (insn);
      new_insn = emit_insn_before_noloc (pat, insn);
    }



  else if (CALL_P (insn)
    && (!single_succ_p (bb)
        || single_succ_edge (bb)->flags & EDGE_ABNORMAL))
    {
      gcc_assert (!pre
    || TEST_BIT (antloc[bb->index], expr->bitmap_index)
    || TEST_BIT (transp[bb->index], expr->bitmap_index));




      insn = find_first_parameter_load (insn, BB_HEAD (bb));
      while (LABEL_P (insn)
      || NOTE_INSN_BASIC_BLOCK_P (insn))
 insn = NEXT_INSN (insn);

      new_insn = emit_insn_before_noloc (pat, insn);
    }
  else
    new_insn = emit_insn_after_noloc (pat, insn);

  while (1)
    {
      if (INSN_P (pat))
 {
   add_label_notes (PATTERN (pat), new_insn);
   note_stores (PATTERN (pat), record_set_info, pat);
 }
      if (pat == pat_end)
 break;
      pat = NEXT_INSN (pat);
    }

  gcse_create_count++;

  if (dump_file)
    {
      fprintf (dump_file, "PRE/HOIST: end of bb %d, insn %d, ",
        bb->index, INSN_UID (new_insn));
      fprintf (dump_file, "copying expression %d to reg %d\n",
        expr->bitmap_index, regno);
    }
}

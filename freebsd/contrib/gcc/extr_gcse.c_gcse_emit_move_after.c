
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int REG_EQUAL ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 int XEXP (int ,int ) ;
 int copy_insn_1 (int ) ;
 int emit_insn_after (int ,int ) ;
 int find_reg_equal_equiv_note (int ) ;
 int gen_move_insn (int ,int ) ;
 int rtx_equal_p (int ,int ) ;
 int set_unique_reg_note (int ,int ,int ) ;
 int single_set (int ) ;

__attribute__((used)) static rtx
gcse_emit_move_after (rtx src, rtx dest, rtx insn)
{
  rtx new;
  rtx set = single_set (insn), set2;
  rtx note;
  rtx eqv;




  new = emit_insn_after (gen_move_insn (dest, src), insn);


  set2 = single_set (new);
  if (!set2 || !rtx_equal_p (SET_DEST (set2), dest))
    return new;
  if ((note = find_reg_equal_equiv_note (insn)))
    eqv = XEXP (note, 0);
  else
    eqv = SET_SRC (set);

  set_unique_reg_note (new, REG_EQUAL, copy_insn_1 (eqv));

  return new;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ FIRST_STACK_REG ;
 scalar_t__ FLOAT_MODE_P (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ INSN_CUID (int ) ;
 scalar_t__ JUMP_P (int ) ;
 scalar_t__ LAST_STACK_REG ;
 int MEM_P (int ) ;
 int PATTERN (int ) ;
 scalar_t__ REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 int XEXP (int ,int ) ;
 scalar_t__ can_copy_p (int ) ;
 scalar_t__ flag_float_store ;
 scalar_t__ general_operand (int ,int ) ;
 int insert_expr_in_table (int ,int ) ;
 int load_killed_in_block_p (scalar_t__,int ,int) ;
 scalar_t__ oprs_unchanged_p (int ,int ,int) ;
 scalar_t__ set_noop_p (int ) ;

__attribute__((used)) static void
hash_scan_set (rtx insn)
{
  rtx pat = PATTERN (insn);
  rtx src = SET_SRC (pat);
  rtx dest = SET_DEST (pat);


  if (! MEM_P (src) && ! MEM_P (dest))
    return;


  if (JUMP_P (insn) || set_noop_p (pat))
    return;

  if (REG_P (dest))
    {
      if (
   can_copy_p (GET_MODE (dest))

   && general_operand (src, GET_MODE (src))
   && oprs_unchanged_p (src, insn, 1))
 {
   insert_expr_in_table (src, insn);
 }
    }
  else if (REG_P (src))
    {

      if (
   can_copy_p (GET_MODE (src))

   && general_operand (dest, GET_MODE (dest))




   && ! (flag_float_store && FLOAT_MODE_P (GET_MODE (dest)))

   && ! load_killed_in_block_p (INSN_CUID (insn) + 1, dest, 1)
   && oprs_unchanged_p (XEXP (dest, 0), insn, 1))
 {
   insert_expr_in_table (dest, insn);
 }
    }
}

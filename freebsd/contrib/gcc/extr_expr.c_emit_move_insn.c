
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int BLKmode ;
 scalar_t__ CONSTANT_ADDRESS_P (int ) ;
 scalar_t__ CONSTANT_P (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 int LEGITIMATE_CONSTANT_P (scalar_t__) ;
 scalar_t__ MEM_P (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int REG_EQUAL ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ SCALAR_FLOAT_MODE_P (scalar_t__) ;
 scalar_t__ SET_DEST (scalar_t__) ;
 int SET_SRC (scalar_t__) ;
 scalar_t__ VOIDmode ;
 int XEXP (scalar_t__,int ) ;
 scalar_t__ compress_float_constant (scalar_t__,scalar_t__) ;
 scalar_t__ emit_move_insn_1 (scalar_t__,scalar_t__) ;
 scalar_t__ flag_force_addr ;
 scalar_t__ force_const_mem (int,scalar_t__) ;
 int gcc_assert (int) ;
 int memory_address_p (scalar_t__,int ) ;
 scalar_t__ optimize ;
 int push_operand (scalar_t__,scalar_t__) ;
 int rtx_equal_p (scalar_t__,int ) ;
 int set_unique_reg_note (scalar_t__,int ,scalar_t__) ;
 scalar_t__ single_set (scalar_t__) ;
 scalar_t__ use_anchored_address (scalar_t__) ;
 scalar_t__ validize_mem (scalar_t__) ;

rtx
emit_move_insn (rtx x, rtx y)
{
  enum machine_mode mode = GET_MODE (x);
  rtx y_cst = NULL_RTX;
  rtx last_insn, set;

  gcc_assert (mode != BLKmode
       && (GET_MODE (y) == mode || GET_MODE (y) == VOIDmode));

  if (CONSTANT_P (y))
    {
      if (optimize
   && SCALAR_FLOAT_MODE_P (GET_MODE (x))
   && (last_insn = compress_float_constant (x, y)))
 return last_insn;

      y_cst = y;

      if (!LEGITIMATE_CONSTANT_P (y))
 {
   y = force_const_mem (mode, y);




   if (!y)
     y = y_cst;
   else
     y = use_anchored_address (y);
 }
    }



  if (MEM_P (x)
      && ((! memory_address_p (GET_MODE (x), XEXP (x, 0))
    && ! push_operand (x, GET_MODE (x)))
   || (flag_force_addr
       && CONSTANT_ADDRESS_P (XEXP (x, 0)))))
    x = validize_mem (x);

  if (MEM_P (y)
      && (! memory_address_p (GET_MODE (y), XEXP (y, 0))
   || (flag_force_addr
       && CONSTANT_ADDRESS_P (XEXP (y, 0)))))
    y = validize_mem (y);

  gcc_assert (mode != BLKmode);

  last_insn = emit_move_insn_1 (x, y);

  if (y_cst && REG_P (x)
      && (set = single_set (last_insn)) != NULL_RTX
      && SET_DEST (set) == x
      && ! rtx_equal_p (y_cst, SET_SRC (set)))
    set_unique_reg_note (last_insn, REG_EQUAL, y_cst);

  return last_insn;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONSTANT_P (int ) ;
 scalar_t__ CONST_INT ;
 int GEN_INT (int) ;
 int GET_CLASS_NARROWEST_MODE (int ) ;
 scalar_t__ GET_CODE (int ) ;
 int INTVAL (int ) ;
 int MODE_INT ;
 int OPTAB_LIB_WIDEN ;
 int Pmode ;
 scalar_t__ REG_P (int ) ;
 int add_optab ;
 int anti_adjust_stack (int ) ;
 int convert_modes (int ,int ,int ,int) ;
 int copy_to_mode_reg (int ,int ) ;
 int expand_binop (int ,int ,int ,int ,int ,int ,int ) ;
 int gen_rtx_PLUS (int ,int ,int ) ;
 int memory_address (int ,int ) ;
 int negate_rtx (int ,int ) ;
 int plus_constant (int ,int) ;
 int ptr_mode ;
 int virtual_outgoing_args_rtx ;

rtx
push_block (rtx size, int extra, int below)
{
  rtx temp;

  size = convert_modes (Pmode, ptr_mode, size, 1);
  if (CONSTANT_P (size))
    anti_adjust_stack (plus_constant (size, extra));
  else if (REG_P (size) && extra == 0)
    anti_adjust_stack (size);
  else
    {
      temp = copy_to_mode_reg (Pmode, size);
      if (extra != 0)
 temp = expand_binop (Pmode, add_optab, temp, GEN_INT (extra),
        temp, 0, OPTAB_LIB_WIDEN);
      anti_adjust_stack (temp);
    }


  if (0)



    {
      temp = virtual_outgoing_args_rtx;
      if (extra != 0 && below)
 temp = plus_constant (temp, extra);
    }
  else
    {
      if (GET_CODE (size) == CONST_INT)
 temp = plus_constant (virtual_outgoing_args_rtx,
         -INTVAL (size) - (below ? 0 : extra));
      else if (extra != 0 && !below)
 temp = gen_rtx_PLUS (Pmode, virtual_outgoing_args_rtx,
        negate_rtx (Pmode, plus_constant (size, extra)));
      else
 temp = gen_rtx_PLUS (Pmode, virtual_outgoing_args_rtx,
        negate_rtx (Pmode, size));
    }

  return memory_address (GET_CLASS_NARROWEST_MODE (MODE_INT), temp);
}

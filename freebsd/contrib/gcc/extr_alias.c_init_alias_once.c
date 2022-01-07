
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ARG_POINTER_REGNUM ;
 int FIRST_PSEUDO_REGISTER ;
 size_t FRAME_POINTER_REGNUM ;
 scalar_t__ FUNCTION_ARG_REGNO_P (int ) ;
 size_t HARD_FRAME_POINTER_REGNUM ;
 scalar_t__ HARD_REGNO_MODE_OK (int,int ) ;
 int OUTGOING_REGNO (int) ;
 int Pmode ;
 size_t STACK_POINTER_REGNUM ;
 int VOIDmode ;
 int arg_pointer_rtx ;
 int frame_pointer_rtx ;
 int gen_rtx_ADDRESS (int ,int ) ;
 int gen_rtx_REG (int ,int) ;
 int hard_frame_pointer_rtx ;
 int stack_pointer_rtx ;
 int * static_reg_base_value ;

void
init_alias_once (void)
{
  int i;

  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)



    if (FUNCTION_ARG_REGNO_P (OUTGOING_REGNO (i))
 && HARD_REGNO_MODE_OK (i, Pmode))
      static_reg_base_value[i]
 = gen_rtx_ADDRESS (VOIDmode, gen_rtx_REG (Pmode, i));

  static_reg_base_value[STACK_POINTER_REGNUM]
    = gen_rtx_ADDRESS (Pmode, stack_pointer_rtx);
  static_reg_base_value[ARG_POINTER_REGNUM]
    = gen_rtx_ADDRESS (Pmode, arg_pointer_rtx);
  static_reg_base_value[FRAME_POINTER_REGNUM]
    = gen_rtx_ADDRESS (Pmode, frame_pointer_rtx);




}

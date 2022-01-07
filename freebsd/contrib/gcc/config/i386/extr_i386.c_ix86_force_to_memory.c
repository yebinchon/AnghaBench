
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;



 int GEN_INT (int ) ;
 int GET_MODE (int ) ;

 int const Pmode ;
 int RED_ZONE_SIZE ;

 scalar_t__ TARGET_64BIT ;
 scalar_t__ TARGET_RED_ZONE ;
 int VOIDmode ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int gcc_assert (int ) ;
 int gcc_unreachable () ;
 int gen_lowpart (int const,int ) ;
 int gen_rtx_MEM (int const,int ) ;
 int gen_rtx_PLUS (int const,int ,int ) ;
 int gen_rtx_PRE_DEC (int const,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int reload_completed ;
 int split_di (int *,int,int *,int *) ;
 int stack_pointer_rtx ;

rtx
ix86_force_to_memory (enum machine_mode mode, rtx operand)
{
  rtx result;

  gcc_assert (reload_completed);
  if (TARGET_RED_ZONE)
    {
      result = gen_rtx_MEM (mode,
       gen_rtx_PLUS (Pmode,
       stack_pointer_rtx,
       GEN_INT (-RED_ZONE_SIZE)));
      emit_move_insn (result, operand);
    }
  else if (!TARGET_RED_ZONE && TARGET_64BIT)
    {
      switch (mode)
 {
 case 129:
 case 128:
   operand = gen_lowpart (130, operand);

 case 130:
   emit_insn (
        gen_rtx_SET (VOIDmode,
       gen_rtx_MEM (130,
      gen_rtx_PRE_DEC (130,
       stack_pointer_rtx)),
       operand));
   break;
 default:
   gcc_unreachable ();
 }
      result = gen_rtx_MEM (mode, stack_pointer_rtx);
    }
  else
    {
      switch (mode)
 {
 case 130:
   {
     rtx operands[2];
     split_di (&operand, 1, operands, operands + 1);
     emit_insn (
   gen_rtx_SET (VOIDmode,
         gen_rtx_MEM (128,
        gen_rtx_PRE_DEC (Pmode,
       stack_pointer_rtx)),
         operands[1]));
     emit_insn (
   gen_rtx_SET (VOIDmode,
         gen_rtx_MEM (128,
        gen_rtx_PRE_DEC (Pmode,
       stack_pointer_rtx)),
         operands[0]));
   }
   break;
 case 129:

   operand = gen_lowpart (128, operand);

 case 128:
   emit_insn (
        gen_rtx_SET (VOIDmode,
       gen_rtx_MEM (GET_MODE (operand),
      gen_rtx_PRE_DEC (128,
       stack_pointer_rtx)),
       operand));
   break;
 default:
   gcc_unreachable ();
 }
      result = gen_rtx_MEM (mode, stack_pointer_rtx);
    }
  return result;
}

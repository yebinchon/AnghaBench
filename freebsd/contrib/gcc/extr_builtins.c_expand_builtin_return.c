
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int BITS_PER_UNIT ;
 int BLKmode ;
 int CEIL (int,int) ;
 int FIRST_PSEUDO_REGISTER ;
 int GET_MODE_ALIGNMENT (int) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 scalar_t__ HAVE_untyped_return ;
 int INCOMING_REGNO (int) ;
 int Pmode ;
 int VOIDmode ;
 int adjust_address (int ,int,int) ;
 int* apply_result_mode ;
 int apply_result_size () ;
 int convert_memory_address (int ,int ) ;
 int emit_barrier () ;
 int emit_insn (int ) ;
 int emit_jump_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int end_sequence () ;
 int expand_naked_return () ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_REG (int,int ) ;
 int gen_rtx_USE (int,int ) ;
 int gen_untyped_return (int ,int ) ;
 int get_insns () ;
 int push_to_sequence (int ) ;
 int result_vector (int ,int ) ;

__attribute__((used)) static void
expand_builtin_return (rtx result)
{
  int size, align, regno;
  enum machine_mode mode;
  rtx reg;
  rtx call_fusage = 0;

  result = convert_memory_address (Pmode, result);

  apply_result_size ();
  result = gen_rtx_MEM (BLKmode, result);
  size = 0;
  for (regno = 0; regno < FIRST_PSEUDO_REGISTER; regno++)
    if ((mode = apply_result_mode[regno]) != VOIDmode)
      {
 align = GET_MODE_ALIGNMENT (mode) / BITS_PER_UNIT;
 if (size % align != 0)
   size = CEIL (size, align) * align;
 reg = gen_rtx_REG (mode, INCOMING_REGNO (regno));
 emit_move_insn (reg, adjust_address (result, mode, size));

 push_to_sequence (call_fusage);
 emit_insn (gen_rtx_USE (VOIDmode, reg));
 call_fusage = get_insns ();
 end_sequence ();
 size += GET_MODE_SIZE (mode);
      }


  emit_insn (call_fusage);



  expand_naked_return ();
}

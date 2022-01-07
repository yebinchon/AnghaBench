
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int DImode ;
 int GEN_INT (int) ;
 int Pmode ;
 scalar_t__ TARGET_64BIT ;
 int TARGET_RED_ZONE ;
 int VOIDmode ;
 int emit_insn (int ) ;
 int gen_rtx_PLUS (int ,int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int stack_pointer_rtx ;

void
ix86_free_from_memory (enum machine_mode mode)
{
  if (!TARGET_RED_ZONE)
    {
      int size;

      if (mode == DImode || TARGET_64BIT)
 size = 8;
      else
 size = 4;


      emit_insn (gen_rtx_SET (VOIDmode, stack_pointer_rtx,
         gen_rtx_PLUS (Pmode, stack_pointer_rtx,
         GEN_INT (size))));
    }
}

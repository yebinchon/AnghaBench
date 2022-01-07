
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef scalar_t__ HOST_WIDE_INT ;


 int DImode ;
 int FIRST_PSEUDO_REGISTER ;
 int FIRST_REX_INT_REG ;
 int GEN_INT (scalar_t__) ;
 int Pmode ;
 int SImode ;
 scalar_t__ TARGET_64BIT ;
 scalar_t__ UNITS_PER_WORD ;
 int adjust_address (int ,int ,scalar_t__) ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int gen_adddi3 (int ,int ,int ) ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_REG (int ,int) ;
 scalar_t__ ix86_save_reg (int,int) ;
 scalar_t__ trunc_int_for_mode (scalar_t__,int ) ;

__attribute__((used)) static void
ix86_emit_restore_regs_using_mov (rtx pointer, HOST_WIDE_INT offset,
      int maybe_eh_return)
{
  int regno;
  rtx base_address = gen_rtx_MEM (Pmode, pointer);

  for (regno = 0; regno < FIRST_PSEUDO_REGISTER; regno++)
    if (ix86_save_reg (regno, maybe_eh_return))
      {


 if (TARGET_64BIT && offset != trunc_int_for_mode (offset, SImode))
   {
     rtx r11;

     r11 = gen_rtx_REG (DImode, FIRST_REX_INT_REG + 3 );
     emit_move_insn (r11, GEN_INT (offset));
     emit_insn (gen_adddi3 (r11, r11, pointer));
     base_address = gen_rtx_MEM (Pmode, r11);
     offset = 0;
   }
 emit_move_insn (gen_rtx_REG (Pmode, regno),
   adjust_address (base_address, Pmode, offset));
 offset += UNITS_PER_WORD;
      }
}

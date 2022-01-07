
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GEN_INT (int) ;
 int HImode ;




 int MAX_386_STACK_LOCALS ;
 int SLOT_CW_CEIL ;
 int SLOT_CW_FLOOR ;
 int SLOT_CW_MASK_PM ;
 int SLOT_CW_STORED ;
 int SLOT_CW_TRUNC ;
 scalar_t__ TARGET_64BIT ;
 scalar_t__ TARGET_PARTIAL_REG_STALL ;
 int assign_386_stack_local (int ,int) ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int gen_andhi3 (int ,int ,int ) ;
 int gen_iorhi3 (int ,int ,int ) ;
 int gen_movsi_insv_1 (int ,int ) ;
 int gen_reg_rtx (int ) ;
 int gen_x86_fnstcw_1 (int ) ;
 scalar_t__ optimize_size ;

void
emit_i387_cw_initialization (int mode)
{
  rtx stored_mode = assign_386_stack_local (HImode, SLOT_CW_STORED);
  rtx new_mode;

  int slot;

  rtx reg = gen_reg_rtx (HImode);

  emit_insn (gen_x86_fnstcw_1 (stored_mode));
  emit_move_insn (reg, stored_mode);

  if (TARGET_64BIT || TARGET_PARTIAL_REG_STALL || optimize_size)
    {
      switch (mode)
 {
 case 128:

   emit_insn (gen_iorhi3 (reg, reg, GEN_INT (0x0c00)));
   slot = SLOT_CW_TRUNC;
   break;

 case 130:

   emit_insn (gen_andhi3 (reg, reg, GEN_INT (~0x0c00)));
   emit_insn (gen_iorhi3 (reg, reg, GEN_INT (0x0400)));
   slot = SLOT_CW_FLOOR;
   break;

 case 131:

   emit_insn (gen_andhi3 (reg, reg, GEN_INT (~0x0c00)));
   emit_insn (gen_iorhi3 (reg, reg, GEN_INT (0x0800)));
   slot = SLOT_CW_CEIL;
   break;

 case 129:

   emit_insn (gen_iorhi3 (reg, reg, GEN_INT (0x0020)));
   slot = SLOT_CW_MASK_PM;
   break;

 default:
   gcc_unreachable ();
 }
    }
  else
    {
      switch (mode)
 {
 case 128:

   emit_insn (gen_movsi_insv_1 (reg, GEN_INT (0xc)));
   slot = SLOT_CW_TRUNC;
   break;

 case 130:

   emit_insn (gen_movsi_insv_1 (reg, GEN_INT (0x4)));
   slot = SLOT_CW_FLOOR;
   break;

 case 131:

   emit_insn (gen_movsi_insv_1 (reg, GEN_INT (0x8)));
   slot = SLOT_CW_CEIL;
   break;

 case 129:

   emit_insn (gen_iorhi3 (reg, reg, GEN_INT (0x0020)));
   slot = SLOT_CW_MASK_PM;
   break;

 default:
   gcc_unreachable ();
 }
    }

  gcc_assert (slot < MAX_386_STACK_LOCALS);

  new_mode = assign_386_stack_local (HImode, slot);
  emit_move_insn (new_mode, reg);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GET_MODE (int ) ;
 scalar_t__ GP_REG_FIRST ;
 int M16_REG_P (scalar_t__) ;
 int MIPS_EPILOGUE_TEMP (int ) ;
 scalar_t__ REGNO (int ) ;
 scalar_t__ TARGET_MIPS16 ;
 int emit_move_insn (int ,int ) ;
 int gen_rtx_REG (int ,int) ;

__attribute__((used)) static void
mips_restore_reg (rtx reg, rtx mem)
{


  if (TARGET_MIPS16 && REGNO (reg) == GP_REG_FIRST + 31)
    reg = gen_rtx_REG (GET_MODE (reg), 7);

  if (TARGET_MIPS16 && !M16_REG_P (REGNO (reg)))
    {

      emit_move_insn (MIPS_EPILOGUE_TEMP (GET_MODE (reg)), mem);
      emit_move_insn (reg, MIPS_EPILOGUE_TEMP (GET_MODE (reg)));
    }
  else
    emit_move_insn (reg, mem);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONSTANT_P (int ) ;
 int DImode ;
 int GET_MODE_SIZE (int) ;
 scalar_t__ GP_REG_P (int) ;
 int HI_REGNUM ;
 int LO_REGNUM ;
 scalar_t__ MD_REG_P (int) ;
 int REGNO (int ) ;
 int REG_EQUAL ;
 scalar_t__ REG_P (int ) ;
 int SImode ;
 int UNITS_PER_WORD ;
 int copy_rtx (int ) ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int force_reg (int,int ) ;
 int gen_mfhilo_di (int ,int ,int ) ;
 int gen_mfhilo_si (int ,int ,int ) ;
 int gen_rtx_REG (int ,int) ;
 int get_last_insn () ;
 int mips_legitimize_const_move (int,int ,int ) ;
 int move_operand (int ,int) ;
 int reg_or_0_operand (int ,int) ;
 int register_operand (int ,int) ;
 int set_unique_reg_note (int ,int ,int ) ;

bool
mips_legitimize_move (enum machine_mode mode, rtx dest, rtx src)
{
  if (!register_operand (dest, mode) && !reg_or_0_operand (src, mode))
    {
      emit_move_insn (dest, force_reg (mode, src));
      return 1;
    }


  if (GET_MODE_SIZE (mode) <= UNITS_PER_WORD
      && REG_P (src) && MD_REG_P (REGNO (src))
      && REG_P (dest) && GP_REG_P (REGNO (dest)))
    {
      int other_regno = REGNO (src) == HI_REGNUM ? LO_REGNUM : HI_REGNUM;
      if (GET_MODE_SIZE (mode) <= 4)
 emit_insn (gen_mfhilo_si (gen_rtx_REG (SImode, REGNO (dest)),
      gen_rtx_REG (SImode, REGNO (src)),
      gen_rtx_REG (SImode, other_regno)));
      else
 emit_insn (gen_mfhilo_di (gen_rtx_REG (DImode, REGNO (dest)),
      gen_rtx_REG (DImode, REGNO (src)),
      gen_rtx_REG (DImode, other_regno)));
      return 1;
    }



  if (CONSTANT_P (src) && !move_operand (src, mode))
    {
      mips_legitimize_const_move (mode, dest, src);
      set_unique_reg_note (get_last_insn (), REG_EQUAL, copy_rtx (src));
      return 1;
    }
  return 0;
}

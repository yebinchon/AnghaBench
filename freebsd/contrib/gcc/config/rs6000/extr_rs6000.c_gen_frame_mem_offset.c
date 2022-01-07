
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int DFmode ;
 int FIXED_SCRATCH ;
 int GEN_INT (int) ;
 int Pmode ;
 scalar_t__ SPE_VECTOR_MODE (int) ;
 scalar_t__ TARGET_E500_DOUBLE ;
 scalar_t__ TARGET_SPE_ABI ;
 int emit_move_insn (int ,int ) ;
 int gen_frame_mem (int,int ) ;
 int gen_rtx_PLUS (int ,int ,int ) ;
 int gen_rtx_REG (int ,int ) ;

__attribute__((used)) static rtx
gen_frame_mem_offset (enum machine_mode mode, rtx reg, int offset)
{
  rtx int_rtx, offset_rtx;

  int_rtx = GEN_INT (offset);

  if ((TARGET_SPE_ABI && SPE_VECTOR_MODE (mode))
      || (TARGET_E500_DOUBLE && mode == DFmode))
    {
      offset_rtx = gen_rtx_REG (Pmode, FIXED_SCRATCH);
      emit_move_insn (offset_rtx, int_rtx);
    }
  else
    offset_rtx = int_rtx;

  return gen_frame_mem (mode, gen_rtx_PLUS (Pmode, reg, offset_rtx));
}

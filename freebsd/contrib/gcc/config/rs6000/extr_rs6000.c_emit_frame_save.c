
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 scalar_t__ ALTIVEC_VECTOR_MODE (int) ;
 int DFmode ;
 int GEN_INT (int) ;
 int NULL_RTX ;
 int Pmode ;
 int SPE_CONST_OFFSET_OK (int) ;
 scalar_t__ SPE_VECTOR_MODE (int) ;
 scalar_t__ TARGET_ALTIVEC_ABI ;
 scalar_t__ TARGET_E500_DOUBLE ;
 scalar_t__ TARGET_SPE_ABI ;
 int emit_move_insn (int ,int ) ;
 int gen_frame_mem (int,int ) ;
 int gen_rtx_PLUS (int,int ,int ) ;
 int gen_rtx_REG (int,unsigned int) ;
 int rs6000_frame_related (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
emit_frame_save (rtx frame_reg, rtx frame_ptr, enum machine_mode mode,
   unsigned int regno, int offset, HOST_WIDE_INT total_size)
{
  rtx reg, offset_rtx, insn, mem, addr, int_rtx;
  rtx replacea, replaceb;

  int_rtx = GEN_INT (offset);


  if ((TARGET_ALTIVEC_ABI && ALTIVEC_VECTOR_MODE (mode))
      || (TARGET_E500_DOUBLE && mode == DFmode)
      || (TARGET_SPE_ABI
   && SPE_VECTOR_MODE (mode)
   && !SPE_CONST_OFFSET_OK (offset)))
    {


      offset_rtx = gen_rtx_REG (Pmode, 11);
      emit_move_insn (offset_rtx, int_rtx);

      replacea = offset_rtx;
      replaceb = int_rtx;
    }
  else
    {
      offset_rtx = int_rtx;
      replacea = NULL_RTX;
      replaceb = NULL_RTX;
    }

  reg = gen_rtx_REG (mode, regno);
  addr = gen_rtx_PLUS (Pmode, frame_reg, offset_rtx);
  mem = gen_frame_mem (mode, addr);

  insn = emit_move_insn (mem, reg);

  rs6000_frame_related (insn, frame_ptr, total_size, replacea, replaceb);
}

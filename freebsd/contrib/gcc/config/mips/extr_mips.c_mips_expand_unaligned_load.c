
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ DImode ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 unsigned int GET_MODE_BITSIZE (scalar_t__) ;
 scalar_t__ SImode ;
 scalar_t__ SUBREG ;
 scalar_t__ SUBREG_BYTE (int ) ;
 int SUBREG_REG (int ) ;
 int copy_rtx (int ) ;
 int emit_insn (int ) ;
 int gen_mov_ldl (int ,int ,int ) ;
 int gen_mov_ldr (int ,int ,int ,int ) ;
 int gen_mov_lwl (int ,int ,int ) ;
 int gen_mov_lwr (int ,int ,int ,int ) ;
 int gen_reg_rtx (scalar_t__) ;
 int mips_get_unaligned_mem (int *,unsigned int,int,int *,int *) ;

bool
mips_expand_unaligned_load (rtx dest, rtx src, unsigned int width, int bitpos)
{
  rtx left, right, temp;




  if (GET_CODE (dest) == SUBREG
      && GET_MODE (dest) == DImode
      && SUBREG_BYTE (dest) == 0
      && GET_MODE (SUBREG_REG (dest)) == SImode)
    dest = SUBREG_REG (dest);



  if (GET_MODE_BITSIZE (GET_MODE (dest)) != width)
    return 0;

  if (!mips_get_unaligned_mem (&src, width, bitpos, &left, &right))
    return 0;

  temp = gen_reg_rtx (GET_MODE (dest));
  if (GET_MODE (dest) == DImode)
    {
      emit_insn (gen_mov_ldl (temp, src, left));
      emit_insn (gen_mov_ldr (dest, copy_rtx (src), right, temp));
    }
  else
    {
      emit_insn (gen_mov_lwl (temp, src, left));
      emit_insn (gen_mov_lwr (dest, copy_rtx (src), right, temp));
    }
  return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;
typedef int HOST_WIDE_INT ;


 int ARM_NUM_INTS (int) ;
 scalar_t__ BYTES_BIG_ENDIAN ;
 scalar_t__ CONST_INT ;
 int FALSE ;
 int GEN_INT (int) ;
 scalar_t__ GET_CODE (int *) ;
 int HImode ;
 int INTVAL (int *) ;
 int QImode ;
 int SImode ;
 int TRUE ;
 int * XEXP (int *,int ) ;
 int * adjust_automodify_address (int *,int ,int *,int) ;
 int arm_gen_load_multiple (int ,int,int *,int ,int ,int *,int*) ;
 int arm_gen_store_multiple (int ,int,int *,int ,int ,int *,int*) ;
 int const2_rtx ;
 int * copy_to_mode_reg (int ,int *) ;
 int * copy_to_reg (int *) ;
 int emit_insn (int ) ;
 int emit_move_insn (int *,int *) ;
 int gcc_assert (int) ;
 int gen_addsi3 (int *,int *,int ) ;
 int * gen_lowpart (int ,int *) ;
 int gen_lshrsi3 (int *,int *,int ) ;
 int * gen_reg_rtx (int ) ;
 int * gen_rtx_REG (int ,int) ;
 int * plus_constant (int *,int) ;

int
arm_gen_movmemqi (rtx *operands)
{
  HOST_WIDE_INT in_words_to_go, out_words_to_go, last_bytes;
  HOST_WIDE_INT srcoffset, dstoffset;
  int i;
  rtx src, dst, srcbase, dstbase;
  rtx part_bytes_reg = ((void*)0);
  rtx mem;

  if (GET_CODE (operands[2]) != CONST_INT
      || GET_CODE (operands[3]) != CONST_INT
      || INTVAL (operands[2]) > 64
      || INTVAL (operands[3]) & 3)
    return 0;

  dstbase = operands[0];
  srcbase = operands[1];

  dst = copy_to_mode_reg (SImode, XEXP (dstbase, 0));
  src = copy_to_mode_reg (SImode, XEXP (srcbase, 0));

  in_words_to_go = ARM_NUM_INTS (INTVAL (operands[2]));
  out_words_to_go = INTVAL (operands[2]) / 4;
  last_bytes = INTVAL (operands[2]) & 3;
  dstoffset = srcoffset = 0;

  if (out_words_to_go != in_words_to_go && ((in_words_to_go - 1) & 3) != 0)
    part_bytes_reg = gen_rtx_REG (SImode, (in_words_to_go - 1) & 3);

  for (i = 0; in_words_to_go >= 2; i+=4)
    {
      if (in_words_to_go > 4)
 emit_insn (arm_gen_load_multiple (0, 4, src, TRUE, TRUE,
       srcbase, &srcoffset));
      else
 emit_insn (arm_gen_load_multiple (0, in_words_to_go, src, TRUE,
       FALSE, srcbase, &srcoffset));

      if (out_words_to_go)
 {
   if (out_words_to_go > 4)
     emit_insn (arm_gen_store_multiple (0, 4, dst, TRUE, TRUE,
            dstbase, &dstoffset));
   else if (out_words_to_go != 1)
     emit_insn (arm_gen_store_multiple (0, out_words_to_go,
            dst, TRUE,
            (last_bytes == 0
      ? FALSE : TRUE),
            dstbase, &dstoffset));
   else
     {
       mem = adjust_automodify_address (dstbase, SImode, dst, dstoffset);
       emit_move_insn (mem, gen_rtx_REG (SImode, 0));
       if (last_bytes != 0)
  {
    emit_insn (gen_addsi3 (dst, dst, GEN_INT (4)));
    dstoffset += 4;
  }
     }
 }

      in_words_to_go -= in_words_to_go < 4 ? in_words_to_go : 4;
      out_words_to_go -= out_words_to_go < 4 ? out_words_to_go : 4;
    }


  if (out_words_to_go)
    {
      rtx sreg;

      mem = adjust_automodify_address (srcbase, SImode, src, srcoffset);
      sreg = copy_to_reg (mem);

      mem = adjust_automodify_address (dstbase, SImode, dst, dstoffset);
      emit_move_insn (mem, sreg);
      in_words_to_go--;

      gcc_assert (!in_words_to_go);
    }

  if (in_words_to_go)
    {
      gcc_assert (in_words_to_go > 0);

      mem = adjust_automodify_address (srcbase, SImode, src, srcoffset);
      part_bytes_reg = copy_to_mode_reg (SImode, mem);
    }

  gcc_assert (!last_bytes || part_bytes_reg);

  if (BYTES_BIG_ENDIAN && last_bytes)
    {
      rtx tmp = gen_reg_rtx (SImode);


      emit_insn (gen_lshrsi3 (tmp, part_bytes_reg,
         GEN_INT (8 * (4 - last_bytes))));
      part_bytes_reg = tmp;

      while (last_bytes)
 {
   mem = adjust_automodify_address (dstbase, QImode,
        plus_constant (dst, last_bytes - 1),
        dstoffset + last_bytes - 1);
   emit_move_insn (mem, gen_lowpart (QImode, part_bytes_reg));

   if (--last_bytes)
     {
       tmp = gen_reg_rtx (SImode);
       emit_insn (gen_lshrsi3 (tmp, part_bytes_reg, GEN_INT (8)));
       part_bytes_reg = tmp;
     }
 }

    }
  else
    {
      if (last_bytes > 1)
 {
   mem = adjust_automodify_address (dstbase, HImode, dst, dstoffset);
   emit_move_insn (mem, gen_lowpart (HImode, part_bytes_reg));
   last_bytes -= 2;
   if (last_bytes)
     {
       rtx tmp = gen_reg_rtx (SImode);
       emit_insn (gen_addsi3 (dst, dst, const2_rtx));
       emit_insn (gen_lshrsi3 (tmp, part_bytes_reg, GEN_INT (16)));
       part_bytes_reg = tmp;
       dstoffset += 2;
     }
 }

      if (last_bytes)
 {
   mem = adjust_automodify_address (dstbase, QImode, dst, dstoffset);
   emit_move_insn (mem, gen_lowpart (QImode, part_bytes_reg));
 }
    }

  return 1;
}

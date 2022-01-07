
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 int BITS_PER_UNIT ;
 int BLKmode ;
 int GEN_INT (int) ;
 int GET_MODE_BITSIZE (int) ;
 int GET_MODE_SIZE (int ) ;
 int HImode ;
 int INTVAL (int ) ;
 int MODE_INT ;
 int SImode ;
 scalar_t__ TARGET_EXTIMM ;
 scalar_t__ TARGET_ZARCH ;
 int VOIDmode ;
 int adjust_address (int ,int,int) ;
 int const0_rtx ;
 scalar_t__ const_int_operand (int ,int ) ;
 int emit_move_insn (int ,int ) ;
 int force_const_mem (int ,int ) ;
 int gcc_assert (int) ;
 int gen_int_mode (int,int) ;
 int gen_lowpart (int,int ) ;
 int gen_rtx_LSHIFTRT (int ,int ,int ) ;
 int gen_rtx_ZERO_EXTRACT (int ,int ,int ,int ) ;
 scalar_t__ memory_operand (int ,int ) ;
 scalar_t__ register_operand (int ,int ) ;
 int s390_expand_movmem (int ,int ,int ) ;
 int set_mem_size (int ,int ) ;
 int smallest_mode_for_size (int,int ) ;
 int word_mode ;

bool
s390_expand_insv (rtx dest, rtx op1, rtx op2, rtx src)
{
  int bitsize = INTVAL (op1);
  int bitpos = INTVAL (op2);


  if (bitsize % BITS_PER_UNIT)
    return 0;

  if (bitpos == 0
      && memory_operand (dest, VOIDmode)
      && (register_operand (src, word_mode)
   || const_int_operand (src, VOIDmode)))
    {

      enum machine_mode mode = smallest_mode_for_size (bitsize, MODE_INT);
      if (GET_MODE_BITSIZE (mode) == bitsize)
 emit_move_insn (adjust_address (dest, mode, 0), gen_lowpart (mode, src));


      else if (const_int_operand (src, VOIDmode))
 {
   int size = bitsize / BITS_PER_UNIT;
   rtx src_mem = adjust_address (force_const_mem (word_mode, src), BLKmode,
     GET_MODE_SIZE (word_mode) - size);

   dest = adjust_address (dest, BLKmode, 0);
   set_mem_size (dest, GEN_INT (size));
   s390_expand_movmem (dest, src_mem, GEN_INT (size));
 }


      else if (register_operand (src, word_mode))
 {
   if (bitsize <= GET_MODE_BITSIZE (SImode))
     emit_move_insn (gen_rtx_ZERO_EXTRACT (word_mode, dest, op1,
        const0_rtx), src);
   else
     {

       int stcmh_width = bitsize - GET_MODE_BITSIZE (SImode);
       int size = stcmh_width / BITS_PER_UNIT;

       emit_move_insn (adjust_address (dest, SImode, size),
         gen_lowpart (SImode, src));
       set_mem_size (dest, GEN_INT (size));
       emit_move_insn (gen_rtx_ZERO_EXTRACT (word_mode, dest, GEN_INT
          (stcmh_width), const0_rtx),
         gen_rtx_LSHIFTRT (word_mode, src, GEN_INT
      (GET_MODE_BITSIZE (SImode))));
     }
 }
      else
 return 0;

      return 1;
    }


  if (TARGET_ZARCH
      && register_operand (dest, word_mode)
      && (bitpos % 16) == 0
      && (bitsize % 16) == 0
      && const_int_operand (src, VOIDmode))
    {
      HOST_WIDE_INT val = INTVAL (src);
      int regpos = bitpos + bitsize;

      while (regpos > bitpos)
 {
   enum machine_mode putmode;
   int putsize;

   if (TARGET_EXTIMM && (regpos % 32 == 0) && (regpos >= bitpos + 32))
     putmode = SImode;
   else
     putmode = HImode;

   putsize = GET_MODE_BITSIZE (putmode);
   regpos -= putsize;
   emit_move_insn (gen_rtx_ZERO_EXTRACT (word_mode, dest,
      GEN_INT (putsize),
      GEN_INT (regpos)),
     gen_int_mode (val, putmode));
   val >>= putsize;
 }
      gcc_assert (regpos == bitpos);
      return 1;
    }

  return 0;
}

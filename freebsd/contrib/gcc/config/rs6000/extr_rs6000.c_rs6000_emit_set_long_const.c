
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int HOST_WIDE_INT ;


 int DImode ;
 int GEN_INT (int) ;
 int TARGET_POWERPC64 ;
 scalar_t__ WORDS_BIG_ENDIAN ;
 int emit_move_insn (int ,int ) ;
 int gen_rtx_ASHIFT (int ,int ,int ) ;
 int gen_rtx_IOR (int ,int ,int ) ;
 int operand_subword_force (int ,int,int ) ;

__attribute__((used)) static rtx
rs6000_emit_set_long_const (rtx dest, HOST_WIDE_INT c1, HOST_WIDE_INT c2)
{
  if (!TARGET_POWERPC64)
    {
      rtx operand1, operand2;

      operand1 = operand_subword_force (dest, WORDS_BIG_ENDIAN == 0,
     DImode);
      operand2 = operand_subword_force (dest, WORDS_BIG_ENDIAN != 0,
     DImode);
      emit_move_insn (operand1, GEN_INT (c1));
      emit_move_insn (operand2, GEN_INT (c2));
    }
  else
    {
      HOST_WIDE_INT ud1, ud2, ud3, ud4;

      ud1 = c1 & 0xffff;
      ud2 = (c1 & 0xffff0000) >> 16;



      ud3 = c2 & 0xffff;
      ud4 = (c2 & 0xffff0000) >> 16;

      if ((ud4 == 0xffff && ud3 == 0xffff && ud2 == 0xffff && (ud1 & 0x8000))
   || (ud4 == 0 && ud3 == 0 && ud2 == 0 && ! (ud1 & 0x8000)))
 {
   if (ud1 & 0x8000)
     emit_move_insn (dest, GEN_INT (((ud1 ^ 0x8000) - 0x8000)));
   else
     emit_move_insn (dest, GEN_INT (ud1));
 }

      else if ((ud4 == 0xffff && ud3 == 0xffff && (ud2 & 0x8000))
        || (ud4 == 0 && ud3 == 0 && ! (ud2 & 0x8000)))
 {
   if (ud2 & 0x8000)
     emit_move_insn (dest, GEN_INT (((ud2 << 16) ^ 0x80000000)
        - 0x80000000));
   else
     emit_move_insn (dest, GEN_INT (ud2 << 16));
   if (ud1 != 0)
     emit_move_insn (dest, gen_rtx_IOR (DImode, dest, GEN_INT (ud1)));
 }
      else if ((ud4 == 0xffff && (ud3 & 0x8000))
        || (ud4 == 0 && ! (ud3 & 0x8000)))
 {
   if (ud3 & 0x8000)
     emit_move_insn (dest, GEN_INT (((ud3 << 16) ^ 0x80000000)
        - 0x80000000));
   else
     emit_move_insn (dest, GEN_INT (ud3 << 16));

   if (ud2 != 0)
     emit_move_insn (dest, gen_rtx_IOR (DImode, dest, GEN_INT (ud2)));
   emit_move_insn (dest, gen_rtx_ASHIFT (DImode, dest, GEN_INT (16)));
   if (ud1 != 0)
     emit_move_insn (dest, gen_rtx_IOR (DImode, dest, GEN_INT (ud1)));
 }
      else
 {
   if (ud4 & 0x8000)
     emit_move_insn (dest, GEN_INT (((ud4 << 16) ^ 0x80000000)
        - 0x80000000));
   else
     emit_move_insn (dest, GEN_INT (ud4 << 16));

   if (ud3 != 0)
     emit_move_insn (dest, gen_rtx_IOR (DImode, dest, GEN_INT (ud3)));

   emit_move_insn (dest, gen_rtx_ASHIFT (DImode, dest, GEN_INT (32)));
   if (ud2 != 0)
     emit_move_insn (dest, gen_rtx_IOR (DImode, dest,
            GEN_INT (ud2 << 16)));
   if (ud1 != 0)
     emit_move_insn (dest, gen_rtx_IOR (DImode, dest, GEN_INT (ud1)));
 }
    }
  return dest;
}

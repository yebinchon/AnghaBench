
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int opcode_modifier; int base_opcode; int* operand_types; int extension_opcode; int name; } ;
struct TYPE_8__ {scalar_t__ suffix; int* types; int operands; TYPE_2__ tm; int rex; TYPE_1__* op; scalar_t__ reg_operands; } ;
struct TYPE_7__ {int reg_type; } ;
struct TYPE_5__ {TYPE_3__* regs; } ;


 unsigned int ADDR_PREFIX_OPCODE ;
 int Acc ;
 scalar_t__ BYTE_MNEM_SUFFIX ;



 unsigned int DATA_PREFIX_OPCODE ;
 int DefaultSize ;
 int FloatMF ;
 int IgnoreSize ;
 int InOutPortReg ;
 int JumpAbsolute ;
 int JumpByte ;
 int JumpInterSegment ;
 scalar_t__ LONG_DOUBLE_MNEM_SUFFIX ;
 scalar_t__ LONG_MNEM_SUFFIX ;
 int NoRex64 ;
 unsigned int No_bSuf ;
 unsigned int No_lSuf ;
 unsigned int No_qSuf ;
 unsigned int No_sSuf ;
 unsigned int No_wSuf ;
 unsigned int No_xSuf ;
 scalar_t__ QWORD_MNEM_SUFFIX ;
 int REX_W ;
 int Reg ;
 int Reg16 ;
 int Reg32 ;
 int Reg64 ;
 int Reg8 ;
 int ShortForm ;
 int Size16 ;
 int Size32 ;
 int Size64 ;
 int W ;
 scalar_t__ WORD_MNEM_SUFFIX ;
 int _ (char*) ;
 int abort () ;
 int add_prefix (unsigned int) ;
 int as_bad (int ,...) ;
 int check_byte_reg () ;
 int check_long_reg () ;
 int check_qword_reg () ;
 int check_word_reg () ;
 int flag_code ;
 TYPE_4__ i ;
 scalar_t__ intel_syntax ;
 scalar_t__ stackop_size ;

__attribute__((used)) static int
process_suffix (void)
{


  if (i.tm.opcode_modifier & (Size16 | Size32 | Size64))
    {
      if (i.tm.opcode_modifier & Size16)
 i.suffix = WORD_MNEM_SUFFIX;
      else if (i.tm.opcode_modifier & Size64)
 i.suffix = QWORD_MNEM_SUFFIX;
      else
 i.suffix = LONG_MNEM_SUFFIX;
    }
  else if (i.reg_operands)
    {


      if (!i.suffix)
 {




   if (i.tm.base_opcode == 0xf20f38f1)
     {
       if ((i.types[0] & Reg))
  i.suffix = ((i.types[0] & Reg16) ? WORD_MNEM_SUFFIX :
       LONG_MNEM_SUFFIX);
     }
   else if (i.tm.base_opcode == 0xf20f38f0)
     {
       if ((i.types[0] & Reg8))
  i.suffix = BYTE_MNEM_SUFFIX;
     }

   if (!i.suffix)
     {
       int op;

       if (i.tm.base_opcode == 0xf20f38f1
    || i.tm.base_opcode == 0xf20f38f0)
  {

    as_bad (_("ambiguous memory operand size for `%s`"),
     i.tm.name);
    return 0;
  }

       for (op = i.operands; --op >= 0;)
  if ((i.types[op] & Reg)
      && !(i.tm.operand_types[op] & InOutPortReg))
    {
      i.suffix = ((i.types[op] & Reg8) ? BYTE_MNEM_SUFFIX :
    (i.types[op] & Reg16) ? WORD_MNEM_SUFFIX :
    (i.types[op] & Reg64) ? QWORD_MNEM_SUFFIX :
    LONG_MNEM_SUFFIX);
      break;
    }
     }
 }
      else if (i.suffix == BYTE_MNEM_SUFFIX)
 {
   if (!check_byte_reg ())
     return 0;
 }
      else if (i.suffix == LONG_MNEM_SUFFIX)
 {
   if (!check_long_reg ())
     return 0;
 }
      else if (i.suffix == QWORD_MNEM_SUFFIX)
 {
   if (!check_qword_reg ())
     return 0;
 }
      else if (i.suffix == WORD_MNEM_SUFFIX)
 {
   if (!check_word_reg ())
     return 0;
 }
      else if (intel_syntax && (i.tm.opcode_modifier & IgnoreSize))

 ;
      else
 abort ();
    }
  else if ((i.tm.opcode_modifier & DefaultSize)
    && !i.suffix

    && (i.tm.opcode_modifier & No_sSuf))
    {
      i.suffix = stackop_size;
    }
  else if (intel_syntax
    && !i.suffix
    && ((i.tm.operand_types[0] & JumpAbsolute)
        || (i.tm.opcode_modifier & (JumpByte|JumpInterSegment))
        || (i.tm.base_opcode == 0x0f01
     && i.tm.extension_opcode <= 3)))
    {
      switch (flag_code)
 {
 case 128:
   if (!(i.tm.opcode_modifier & No_qSuf))
     {
       i.suffix = QWORD_MNEM_SUFFIX;
       break;
     }
 case 129:
   if (!(i.tm.opcode_modifier & No_lSuf))
     i.suffix = LONG_MNEM_SUFFIX;
   break;
 case 130:
   if (!(i.tm.opcode_modifier & No_wSuf))
     i.suffix = WORD_MNEM_SUFFIX;
   break;
 }
    }

  if (!i.suffix)
    {
      if (!intel_syntax)
 {
   if (i.tm.opcode_modifier & W)
     {
       as_bad (_("no instruction mnemonic suffix given and "
   "no register operands; can't size instruction"));
       return 0;
     }
 }
      else
 {
   unsigned int suffixes = (~i.tm.opcode_modifier
       & (No_bSuf
          | No_wSuf
          | No_lSuf
          | No_sSuf
          | No_xSuf
          | No_qSuf));

   if ((i.tm.opcode_modifier & W)
       || ((suffixes & (suffixes - 1))
    && !(i.tm.opcode_modifier & (DefaultSize | IgnoreSize))))
     {
       as_bad (_("ambiguous operand size for `%s'"), i.tm.name);
       return 0;
     }
 }
    }




  if (i.suffix && i.suffix != BYTE_MNEM_SUFFIX)
    {

      if (i.tm.opcode_modifier & W)
 {
   if (i.tm.opcode_modifier & ShortForm)
     i.tm.base_opcode |= 8;
   else
     i.tm.base_opcode |= 1;
 }




      if (i.tm.base_opcode == 0x0f01 && i.tm.extension_opcode == 0xc8)
 {



   if (i.op->regs[0].reg_type &
       (flag_code == 129 ? Reg16 : Reg32))
     if (!add_prefix (ADDR_PREFIX_OPCODE))
       return 0;
 }
      else if (i.suffix != QWORD_MNEM_SUFFIX
        && i.suffix != LONG_DOUBLE_MNEM_SUFFIX
        && !(i.tm.opcode_modifier & (IgnoreSize | FloatMF))
        && ((i.suffix == LONG_MNEM_SUFFIX) == (flag_code == 130)
     || (flag_code == 128
         && (i.tm.opcode_modifier & JumpByte))))
 {
   unsigned int prefix = DATA_PREFIX_OPCODE;

   if (i.tm.opcode_modifier & JumpByte)
     prefix = ADDR_PREFIX_OPCODE;

   if (!add_prefix (prefix))
     return 0;
 }


      if (i.suffix == QWORD_MNEM_SUFFIX
   && flag_code == 128
   && (i.tm.opcode_modifier & NoRex64) == 0)
 {


   if (i.operands != 2
       || i.types [0] != (Acc | Reg64)
       || i.types [1] != (Acc | Reg64)
       || i.tm.base_opcode != 0x90)
     i.rex |= REX_W;
 }


      if (i.suffix == LONG_MNEM_SUFFIX)
 if (i.tm.opcode_modifier & FloatMF)
   i.tm.base_opcode ^= 4;
    }

  return 1;
}

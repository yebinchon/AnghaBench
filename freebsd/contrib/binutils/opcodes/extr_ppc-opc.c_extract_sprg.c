
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PPC_OPCODE_403 ;
 int PPC_OPCODE_BOOKE ;

__attribute__((used)) static long
extract_sprg (unsigned long insn,
       int dialect,
       int *invalid)
{
  unsigned long val = (insn >> 16) & 0x1f;



  if (val <= 3
      || (val < 0x10 && (insn & 0x100) != 0)
      || (val - 0x10 > 3
   && (dialect & (PPC_OPCODE_BOOKE | PPC_OPCODE_403)) == 0))
    *invalid = 1;
  return val & 7;
}

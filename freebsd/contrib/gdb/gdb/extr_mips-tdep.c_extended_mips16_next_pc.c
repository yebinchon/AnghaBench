
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upk_mips16 {int offset; int regx; unsigned int regy; } ;
typedef int CORE_ADDR ;


 int add_offset_16 (int,int) ;
 unsigned int fetch_mips_16 (int) ;
 int i8type ;
 int itype ;
 int jalxtype ;
 int read_signed_register (int) ;
 int ritype ;
 int unpack_mips16 (int,unsigned int,unsigned int,int ,struct upk_mips16*) ;

__attribute__((used)) static CORE_ADDR
extended_mips16_next_pc (CORE_ADDR pc,
    unsigned int extension, unsigned int insn)
{
  int op = (insn >> 11);
  switch (op)
    {
    case 2:
      {
 CORE_ADDR offset;
 struct upk_mips16 upk;
 unpack_mips16 (pc, extension, insn, itype, &upk);
 offset = upk.offset;
 if (offset & 0x800)
   {
     offset &= 0xeff;
     offset = -offset;
   }
 pc += (offset << 1) + 2;
 break;
      }
    case 3:
      {
 struct upk_mips16 upk;
 unpack_mips16 (pc, extension, insn, jalxtype, &upk);
 pc = add_offset_16 (pc, upk.offset);
 if ((insn >> 10) & 0x01)
   pc = pc & ~0x01;
 else
   pc |= 0x01;
 break;
      }
    case 4:
      {
 struct upk_mips16 upk;
 int reg;
 unpack_mips16 (pc, extension, insn, ritype, &upk);
 reg = read_signed_register (upk.regx);
 if (reg == 0)
   pc += (upk.offset << 1) + 2;
 else
   pc += 2;
 break;
      }
    case 5:
      {
 struct upk_mips16 upk;
 int reg;
 unpack_mips16 (pc, extension, insn, ritype, &upk);
 reg = read_signed_register (upk.regx);
 if (reg != 0)
   pc += (upk.offset << 1) + 2;
 else
   pc += 2;
 break;
      }
    case 12:
      {
 struct upk_mips16 upk;
 int reg;
 unpack_mips16 (pc, extension, insn, i8type, &upk);

 reg = read_signed_register (24);
 if (((upk.regx == 0) && (reg == 0))
     || ((upk.regx == 1) && (reg != 0)))

   pc += (upk.offset << 1) + 2;
 else
   pc += 2;
 break;
      }
    case 29:
      {
 struct upk_mips16 upk;

 op = insn & 0x1f;
 if (op == 0)
   {
     int reg;
     upk.regx = (insn >> 8) & 0x07;
     upk.regy = (insn >> 5) & 0x07;
     switch (upk.regy)
       {
       case 0:
  reg = upk.regx;
  break;
       case 1:
  reg = 31;
  break;
       case 2:
  reg = upk.regx;
  break;
       default:
  reg = 31;
  break;
       }
     pc = read_signed_register (reg);
   }
 else
   pc += 2;
 break;
      }
    case 30:



      {
 pc += 2;
 pc = extended_mips16_next_pc (pc, insn, fetch_mips_16 (pc));
 break;
      }
    default:
      {
 pc += 2;
 break;
      }
    }
  return pc;
}

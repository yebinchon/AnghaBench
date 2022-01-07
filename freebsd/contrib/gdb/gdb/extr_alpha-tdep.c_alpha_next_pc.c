
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGEST ;
typedef int CORE_ADDR ;


 unsigned int alpha_read_insn (int) ;
 int read_register (unsigned int) ;

__attribute__((used)) static CORE_ADDR
alpha_next_pc (CORE_ADDR pc)
{
  unsigned int insn;
  unsigned int op;
  int offset;
  LONGEST rav;

  insn = alpha_read_insn (pc);


  op = (insn >> 26) & 0x3f;

  if (op == 0x1a)
    {


      return (read_register ((insn >> 16) & 0x1f) & ~3);
    }

  if ((op & 0x30) == 0x30)
    {


      if (op == 0x30 ||
   op == 0x34)
 {
 branch_taken:
          offset = (insn & 0x001fffff);
   if (offset & 0x00100000)
     offset |= 0xffe00000;
   offset *= 4;
   return (pc + 4 + offset);
 }


      rav = (LONGEST) read_register ((insn >> 21) & 0x1f);
      switch (op)
 {
 case 0x38:
   if ((rav & 1) == 0)
     goto branch_taken;
   break;
 case 0x3c:
   if (rav & 1)
     goto branch_taken;
   break;
 case 0x39:
   if (rav == 0)
     goto branch_taken;
   break;
 case 0x3d:
   if (rav != 0)
     goto branch_taken;
   break;
 case 0x3a:
   if (rav < 0)
     goto branch_taken;
   break;
 case 0x3b:
   if (rav <= 0)
     goto branch_taken;
   break;
 case 0x3f:
   if (rav > 0)
     goto branch_taken;
   break;
 case 0x3e:
   if (rav >= 0)
     goto branch_taken;
   break;


 }
    }



  return (pc + 4);
}

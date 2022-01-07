
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 unsigned short read_memory_unsigned_integer (scalar_t__,int) ;

__attribute__((used)) static CORE_ADDR
thumb_skip_prologue (CORE_ADDR pc, CORE_ADDR func_end)
{
  CORE_ADDR current_pc;





  int findmask = 0;

  for (current_pc = pc;
       current_pc + 2 < func_end && current_pc < pc + 40;
       current_pc += 2)
    {
      unsigned short insn = read_memory_unsigned_integer (current_pc, 2);

      if ((insn & 0xfe00) == 0xb400)
 {
   findmask |= 1;
 }
      else if ((insn & 0xff00) == 0xb000)

 {
   if ((findmask & 1) == 0)
     continue;
   else
     findmask |= 4;
 }
      else if ((insn & 0xff00) == 0xaf00)
 {
   findmask |= 2;
 }
      else if (insn == 0x466f)
 {
   findmask |= 2;
 }
      else if (findmask == (4+2+1))
 {

   break;
 }
      else



 continue;
    }

  return current_pc;
}

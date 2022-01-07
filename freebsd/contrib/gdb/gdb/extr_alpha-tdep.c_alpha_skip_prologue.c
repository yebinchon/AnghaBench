
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 scalar_t__ alpha_after_prologue (scalar_t__) ;
 unsigned long alpha_read_insn (scalar_t__) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 scalar_t__ target_read_memory (scalar_t__,char*,int) ;

__attribute__((used)) static CORE_ADDR
alpha_skip_prologue (CORE_ADDR pc)
{
  unsigned long inst;
  int offset;
  CORE_ADDR post_prologue_pc;
  char buf[4];
  if (target_read_memory (pc, buf, 4))
    return pc;





  post_prologue_pc = alpha_after_prologue (pc);
  if (post_prologue_pc != 0)
    return max (pc, post_prologue_pc);







  for (offset = 0; offset < 100; offset += 4)
    {
      inst = alpha_read_insn (pc + offset);

      if ((inst & 0xffff0000) == 0x27bb0000)
 continue;
      if ((inst & 0xffff0000) == 0x23bd0000)
 continue;
      if ((inst & 0xffff0000) == 0x23de0000)
 continue;
      if ((inst & 0xffe01fff) == 0x43c0153e)
 continue;

      if (((inst & 0xfc1f0000) == 0xb41e0000
    || (inst & 0xfc1f0000) == 0x9c1e0000)
   && (inst & 0x03e00000) != 0x03e00000)
 continue;

      if (inst == 0x47de040f)
 continue;
      if (inst == 0x47fe040f)
 continue;

      break;
    }
  return pc + offset;
}

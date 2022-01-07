
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int ADDR_BITS_REMOVE (int) ;
 int ARM_PS_REGNUM ;
 int ARM_SP_REGNUM ;
 unsigned long DEPRECATED_REGISTER_SIZE ;
 unsigned long bitcount (int) ;
 int bits (unsigned short,int,int) ;
 scalar_t__ condition_true (unsigned long,unsigned long) ;
 int error (char*) ;
 unsigned short read_memory_integer (int,int) ;
 void* read_register (int) ;
 int sbits (unsigned short,int ,int) ;

CORE_ADDR
thumb_get_next_pc (CORE_ADDR pc)
{
  unsigned long pc_val = ((unsigned long) pc) + 4;
  unsigned short inst1 = read_memory_integer (pc, 2);
  CORE_ADDR nextpc = pc + 2;
  unsigned long offset;

  if ((inst1 & 0xff00) == 0xbd00)
    {
      CORE_ADDR sp;



      offset = bitcount (bits (inst1, 0, 7)) * DEPRECATED_REGISTER_SIZE;
      sp = read_register (ARM_SP_REGNUM);
      nextpc = (CORE_ADDR) read_memory_integer (sp + offset, 4);
      nextpc = ADDR_BITS_REMOVE (nextpc);
      if (nextpc == pc)
 error ("Infinite loop detected");
    }
  else if ((inst1 & 0xf000) == 0xd000)
    {
      unsigned long status = read_register (ARM_PS_REGNUM);
      unsigned long cond = bits (inst1, 8, 11);
      if (cond != 0x0f && condition_true (cond, status))
 nextpc = pc_val + (sbits (inst1, 0, 7) << 1);
    }
  else if ((inst1 & 0xf800) == 0xe000)
    {
      nextpc = pc_val + (sbits (inst1, 0, 10) << 1);
    }
  else if ((inst1 & 0xf800) == 0xf000)
    {
      unsigned short inst2 = read_memory_integer (pc + 2, 2);
      offset = (sbits (inst1, 0, 10) << 12) + (bits (inst2, 0, 10) << 1);
      nextpc = pc_val + offset;

      if (bits (inst2, 11, 12) == 1)
 nextpc = nextpc & 0xfffffffc;
    }
  else if ((inst1 & 0xff00) == 0x4700)
    {
      if (bits (inst1, 3, 6) == 0x0f)
 nextpc = pc_val;
      else
 nextpc = read_register (bits (inst1, 3, 6));

      nextpc = ADDR_BITS_REMOVE (nextpc);
      if (nextpc == pc)
 error ("Infinite loop detected");
    }

  return nextpc;
}

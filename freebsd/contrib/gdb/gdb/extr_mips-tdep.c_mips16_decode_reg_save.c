
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_inst ;


 int RA_REGNUM ;
 int* mips16_to_32_reg ;

__attribute__((used)) static void
mips16_decode_reg_save (t_inst inst, unsigned long *gen_mask)
{
  if ((inst & 0xf800) == 0xd000)
    {
      int reg = mips16_to_32_reg[(inst & 0x700) >> 8];
      *gen_mask |= (1 << reg);
    }
  else if ((inst & 0xff00) == 0xf900)
    {
      int reg = mips16_to_32_reg[(inst & 0xe0) >> 5];
      *gen_mask |= (1 << reg);
    }
  else if ((inst & 0xff00) == 0x6200
    || (inst & 0xff00) == 0xfa00)
    *gen_mask |= (1 << RA_REGNUM);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_inst ;



__attribute__((used)) static void
mips32_decode_reg_save (t_inst inst, unsigned long *gen_mask,
   unsigned long *float_mask)
{
  int reg;

  if ((inst & 0xffe00000) == 0xafa00000
      || (inst & 0xffe00000) == 0xafc00000
      || (inst & 0xffe00000) == 0xffa00000)
    {





      reg = (inst & 0x001f0000) >> 16;
      *gen_mask |= (1 << reg);
    }
  else if ((inst & 0xffe00000) == 0xe7a00000
    || (inst & 0xffe00000) == 0xe7c00000
    || (inst & 0xffe00000) == 0xf7a00000)

    {
      reg = ((inst & 0x001f0000) >> 16);
      *float_mask |= (1 << reg);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
mips16_get_imm (unsigned short prev_inst,
  unsigned short inst,
  int nbits,
  int scale,
  int is_signed)
{
  int offset;

  if ((prev_inst & 0xf800) == 0xf000)
    {
      offset = ((prev_inst & 0x1f) << 11) | (prev_inst & 0x7e0);
      if (offset & 0x8000)
 offset = 0 - (0x10000 - (offset & 0xffff));
      return offset | (inst & 0x1f);
    }
  else
    {
      int max_imm = 1 << nbits;
      int mask = max_imm - 1;
      int sign_bit = max_imm >> 1;

      offset = inst & mask;
      if (is_signed && (offset & sign_bit))
 offset = 0 - (max_imm - offset);
      return offset * scale;
    }
}

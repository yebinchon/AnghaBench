
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
bfd_arm_vfp11_write_mask (unsigned int *wmask, unsigned int reg)
{
  if (reg < 32)
    *wmask |= 1 << reg;
  else if (reg < 48)
    *wmask |= 3 << ((reg - 32) * 2);
}

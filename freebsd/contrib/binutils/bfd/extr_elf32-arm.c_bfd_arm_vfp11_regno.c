
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_boolean ;



__attribute__((used)) static unsigned int
bfd_arm_vfp11_regno (unsigned int insn, bfd_boolean is_double, unsigned int rx,
                     unsigned int x)
{
  if (is_double)
    return (((insn >> rx) & 0xf) | (((insn >> x) & 1) << 4)) + 32;
  else
    return (((insn >> rx) & 0xf) << 1) | ((insn >> x) & 1);
}

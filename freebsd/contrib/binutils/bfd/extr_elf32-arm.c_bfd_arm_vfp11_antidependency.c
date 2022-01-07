
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static bfd_boolean
bfd_arm_vfp11_antidependency (unsigned int wmask, int *regs, int numregs)
{
  int i;

  for (i = 0; i < numregs; i++)
    {
      unsigned int reg = regs[i];

      if (reg < 32 && (wmask & (1 << reg)) != 0)
        return TRUE;

      reg -= 32;

      if (reg >= 16)
        continue;

      if ((wmask & (3 << (reg * 2))) != 0)
        return TRUE;
    }

  return FALSE;
}

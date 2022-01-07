
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I387_FCTRL_REGNUM ;
 int I387_ST0_REGNUM ;

int
i386_fp_regnum_p (int regnum)
{
  if (I387_ST0_REGNUM < 0)
    return 0;

  return (I387_ST0_REGNUM <= regnum && regnum < I387_FCTRL_REGNUM);
}

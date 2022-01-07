
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM_F0_REGNUM ;
 int ARM_FPS_REGNUM ;
 int fetch_fp_register (int) ;
 int fetch_fp_regs () ;
 int fetch_register (int) ;
 int fetch_regs () ;

void
fetch_inferior_registers (int regno)
{
  if (regno >= 0)
    {
      if (regno < ARM_F0_REGNUM || regno > ARM_FPS_REGNUM)
 fetch_register (regno);
      else
 fetch_fp_register (regno);
    }
  else
    {
      fetch_regs ();
      fetch_fp_regs ();
    }
}

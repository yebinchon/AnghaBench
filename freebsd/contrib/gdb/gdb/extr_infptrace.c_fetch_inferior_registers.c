
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_REGS ;
 int fetch_register (int) ;

void
fetch_inferior_registers (int regno)
{
  if (regno >= 0)
    {
      fetch_register (regno);
    }
  else
    {
      for (regno = 0; regno < NUM_REGS; regno++)
 {
   fetch_register (regno);
 }
    }
}

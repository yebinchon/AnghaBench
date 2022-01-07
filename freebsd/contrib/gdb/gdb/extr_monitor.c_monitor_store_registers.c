
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_REGS ;
 int monitor_store_register (int) ;

__attribute__((used)) static void
monitor_store_registers (int regno)
{
  if (regno >= 0)
    {
      monitor_store_register (regno);
      return;
    }

  for (regno = 0; regno < NUM_REGS; regno++)
    monitor_store_register (regno);
}

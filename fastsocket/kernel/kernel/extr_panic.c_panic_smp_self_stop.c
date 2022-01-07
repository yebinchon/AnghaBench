
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;

void __attribute__ ((weak)) panic_smp_self_stop(void)
{
 while (1)
  cpu_relax();
}

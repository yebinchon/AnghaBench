
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arch_unregister_cpu (int) ;
 scalar_t__ cpu_present (int) ;
 int set_cpu_present (int,int) ;

__attribute__((used)) static void disable_hotplug_cpu(int cpu)
{
 if (cpu_present(cpu))
  arch_unregister_cpu(cpu);

 set_cpu_present(cpu, 0);
}

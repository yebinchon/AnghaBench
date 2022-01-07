
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_down (unsigned int) ;
 int cpu_possible (unsigned int) ;
 int disable_hotplug_cpu (unsigned int) ;
 int enable_hotplug_cpu (unsigned int) ;
 int vcpu_online (unsigned int) ;

__attribute__((used)) static void vcpu_hotplug(unsigned int cpu)
{
 if (!cpu_possible(cpu))
  return;

 switch (vcpu_online(cpu)) {
 case 1:
  enable_hotplug_cpu(cpu);
  break;
 case 0:
  (void)cpu_down(cpu);
  disable_hotplug_cpu(cpu);
  break;
 default:
  break;
 }
}

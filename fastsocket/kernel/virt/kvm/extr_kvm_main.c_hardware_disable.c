
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpumask_clear_cpu (int,int ) ;
 int cpumask_test_cpu (int,int ) ;
 int cpus_hardware_enabled ;
 int kvm_arch_hardware_disable (int *) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static void hardware_disable(void *junk)
{
 int cpu = raw_smp_processor_id();

 if (!cpumask_test_cpu(cpu, cpus_hardware_enabled))
  return;
 cpumask_clear_cpu(cpu, cpus_hardware_enabled);
 kvm_arch_hardware_disable(((void*)0));
}

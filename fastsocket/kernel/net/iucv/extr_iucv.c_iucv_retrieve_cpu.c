
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iucv_param {int dummy; } iucv_param ;


 int IUCV_RETRIEVE_BUFFER ;
 int cpu_clear (int,int ) ;
 int cpu_isset (int,int ) ;
 int iucv_block_cpu (int *) ;
 int iucv_buffer_cpumask ;
 int iucv_call_b2f0 (int ,union iucv_param*) ;
 union iucv_param** iucv_param_irq ;
 int smp_processor_id () ;

__attribute__((used)) static void iucv_retrieve_cpu(void *data)
{
 int cpu = smp_processor_id();
 union iucv_param *parm;

 if (!cpu_isset(cpu, iucv_buffer_cpumask))
  return;


 iucv_block_cpu(((void*)0));


 parm = iucv_param_irq[cpu];
 iucv_call_b2f0(IUCV_RETRIEVE_BUFFER, parm);


 cpu_clear(cpu, iucv_buffer_cpumask);
}

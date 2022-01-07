
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iucv_param {int dummy; } iucv_param ;


 int IUCV_SETMASK ;
 int cpu_clear (int,int ) ;
 int iucv_call_b2f0 (int ,union iucv_param*) ;
 int iucv_irq_cpumask ;
 union iucv_param** iucv_param_irq ;
 int memset (union iucv_param*,int ,int) ;
 int smp_processor_id () ;

__attribute__((used)) static void iucv_block_cpu(void *data)
{
 int cpu = smp_processor_id();
 union iucv_param *parm;


 parm = iucv_param_irq[cpu];
 memset(parm, 0, sizeof(union iucv_param));
 iucv_call_b2f0(IUCV_SETMASK, parm);


 cpu_clear(cpu, iucv_irq_cpumask);
}

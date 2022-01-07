
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ipmask; } ;
union iucv_param {TYPE_1__ set_mask; } ;


 int IUCV_SETCONTROLMASK ;
 int IUCV_SETMASK ;
 int cpu_set (int,int ) ;
 int iucv_call_b2f0 (int ,union iucv_param*) ;
 int iucv_irq_cpumask ;
 union iucv_param** iucv_param_irq ;
 int memset (union iucv_param*,int ,int) ;
 int smp_processor_id () ;

__attribute__((used)) static void iucv_allow_cpu(void *data)
{
 int cpu = smp_processor_id();
 union iucv_param *parm;
 parm = iucv_param_irq[cpu];
 memset(parm, 0, sizeof(union iucv_param));
 parm->set_mask.ipmask = 0xf8;
 iucv_call_b2f0(IUCV_SETMASK, parm);
 memset(parm, 0, sizeof(union iucv_param));
 parm->set_mask.ipmask = 0xf8;
 iucv_call_b2f0(IUCV_SETCONTROLMASK, parm);

 cpu_set(cpu, iucv_irq_cpumask);
}

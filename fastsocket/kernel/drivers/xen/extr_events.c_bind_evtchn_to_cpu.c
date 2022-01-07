
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int cpu; } ;
struct TYPE_3__ {int affinity; } ;


 int BUG_ON (int) ;
 int clear_bit (unsigned int,int ) ;
 int cpu_evtchn_mask (unsigned int) ;
 unsigned int cpu_from_irq (int) ;
 int cpumask_copy (int ,int ) ;
 int cpumask_of (unsigned int) ;
 int* evtchn_to_irq ;
 TYPE_2__* irq_info ;
 TYPE_1__* irq_to_desc (int) ;
 int set_bit (unsigned int,int ) ;

__attribute__((used)) static void bind_evtchn_to_cpu(unsigned int chn, unsigned int cpu)
{
 int irq = evtchn_to_irq[chn];

 BUG_ON(irq == -1);




 clear_bit(chn, cpu_evtchn_mask(cpu_from_irq(irq)));
 set_bit(chn, cpu_evtchn_mask(cpu));

 irq_info[irq].cpu = cpu;
}

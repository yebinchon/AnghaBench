
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int t; } ;


 int CVMX_POW_WQ_INT ;
 scalar_t__ INTERRUPT_LIMIT ;
 int IRQ_HANDLED ;
 TYPE_1__* cvm_oct_tasklet ;
 int cvmx_write_csr (int ,int) ;
 int pow_receive_group ;
 int preempt_disable () ;
 int preempt_enable () ;
 size_t smp_processor_id () ;
 int tasklet_schedule (int *) ;

irqreturn_t cvm_oct_do_interrupt(int cpl, void *dev_id)
{

 if (INTERRUPT_LIMIT)
  cvmx_write_csr(CVMX_POW_WQ_INT, 1 << pow_receive_group);
 else
  cvmx_write_csr(CVMX_POW_WQ_INT, 0x10001 << pow_receive_group);
 preempt_disable();
 tasklet_schedule(&cvm_oct_tasklet[smp_processor_id()].t);
 preempt_enable();
 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ipi_vector { ____Placeholder_ipi_vector } ipi_vector ;


 int BUG_ON (int) ;
 int ipi_to_irq ;
 int notify_remote_via_irq (int) ;
 int* per_cpu (int ,unsigned int) ;

void xen_send_IPI_one(unsigned int cpu, enum ipi_vector vector)
{
 int irq = per_cpu(ipi_to_irq, cpu)[vector];
 BUG_ON(irq < 0);
 notify_remote_via_irq(irq);
}

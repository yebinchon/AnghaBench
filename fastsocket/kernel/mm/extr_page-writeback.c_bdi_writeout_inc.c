
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int dummy; } ;


 int __bdi_writeout_inc (struct backing_dev_info*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void bdi_writeout_inc(struct backing_dev_info *bdi)
{
 unsigned long flags;

 local_irq_save(flags);
 __bdi_writeout_inc(bdi);
 local_irq_restore(flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int chip_status; int tq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int VX_STAT_CHIP_INIT ;
 int VX_STAT_IS_STALE ;
 int tasklet_schedule (int *) ;
 int vx_test_and_ack (struct vx_core*) ;

irqreturn_t snd_vx_irq_handler(int irq, void *dev)
{
 struct vx_core *chip = dev;

 if (! (chip->chip_status & VX_STAT_CHIP_INIT) ||
     (chip->chip_status & VX_STAT_IS_STALE))
  return IRQ_NONE;
 if (! vx_test_and_ack(chip))
  tasklet_schedule(&chip->tq);
 return IRQ_HANDLED;
}

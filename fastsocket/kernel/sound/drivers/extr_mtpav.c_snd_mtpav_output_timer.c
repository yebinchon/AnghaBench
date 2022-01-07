
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtpav_port {int mode; scalar_t__ output; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct mtpav {int num_ports; int spinlock; struct mtpav_port* ports; TYPE_1__ timer; } ;


 int MTPAV_MODE_OUTPUT_TRIGGERED ;
 int MTPAV_PIDX_BROADCAST ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int snd_mtpav_output_port_write (struct mtpav*,struct mtpav_port*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_mtpav_output_timer(unsigned long data)
{
 unsigned long flags;
 struct mtpav *chip = (struct mtpav *)data;
 int p;

 spin_lock_irqsave(&chip->spinlock, flags);

 chip->timer.expires = 1 + jiffies;
 add_timer(&chip->timer);

 for (p = 0; p <= chip->num_ports * 2 + MTPAV_PIDX_BROADCAST; p++) {
  struct mtpav_port *portp = &chip->ports[p];
  if ((portp->mode & MTPAV_MODE_OUTPUT_TRIGGERED) && portp->output)
   snd_mtpav_output_port_write(chip, portp, portp->output);
 }
 spin_unlock_irqrestore(&chip->spinlock, flags);
}

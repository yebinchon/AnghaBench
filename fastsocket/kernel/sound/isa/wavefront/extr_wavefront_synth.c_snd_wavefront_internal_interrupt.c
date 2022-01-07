
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int irq_ok; int interrupt_sleeper; int irq_lock; int irq_cnt; } ;
typedef TYPE_1__ snd_wavefront_t ;
struct TYPE_6__ {TYPE_1__ wavefront; } ;
typedef TYPE_2__ snd_wavefront_card_t ;


 int STAT_INTR_READ ;
 int STAT_INTR_WRITE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;
 int wavefront_status (TYPE_1__*) ;

void
snd_wavefront_internal_interrupt (snd_wavefront_card_t *card)
{
 snd_wavefront_t *dev = &card->wavefront;
 if ((wavefront_status(dev) & (STAT_INTR_READ|STAT_INTR_WRITE)) == 0) {
  return;
 }

 spin_lock(&dev->irq_lock);
 dev->irq_ok = 1;
 dev->irq_cnt++;
 spin_unlock(&dev->irq_lock);
 wake_up(&dev->interrupt_sleeper);
}

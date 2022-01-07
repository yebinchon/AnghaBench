
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ad1816a {int lock; TYPE_1__* timer; scalar_t__ capture_substream; scalar_t__ playback_substream; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int sticks; } ;


 unsigned char AD1816A_CAPTURE_IRQ_PENDING ;
 int AD1816A_INTERRUPT_STATUS ;
 unsigned char AD1816A_PLAYBACK_IRQ_PENDING ;
 unsigned char AD1816A_TIMER_IRQ_PENDING ;
 int IRQ_HANDLED ;
 unsigned char snd_ad1816a_in (struct snd_ad1816a*,int ) ;
 int snd_ad1816a_out (struct snd_ad1816a*,int ,int) ;
 int snd_pcm_period_elapsed (scalar_t__) ;
 int snd_timer_interrupt (TYPE_1__*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t snd_ad1816a_interrupt(int irq, void *dev_id)
{
 struct snd_ad1816a *chip = dev_id;
 unsigned char status;

 spin_lock(&chip->lock);
 status = snd_ad1816a_in(chip, AD1816A_INTERRUPT_STATUS);
 spin_unlock(&chip->lock);

 if ((status & AD1816A_PLAYBACK_IRQ_PENDING) && chip->playback_substream)
  snd_pcm_period_elapsed(chip->playback_substream);

 if ((status & AD1816A_CAPTURE_IRQ_PENDING) && chip->capture_substream)
  snd_pcm_period_elapsed(chip->capture_substream);

 if ((status & AD1816A_TIMER_IRQ_PENDING) && chip->timer)
  snd_timer_interrupt(chip->timer, chip->timer->sticks);

 spin_lock(&chip->lock);
 snd_ad1816a_out(chip, AD1816A_INTERRUPT_STATUS, 0x00);
 spin_unlock(&chip->lock);
 return IRQ_HANDLED;
}

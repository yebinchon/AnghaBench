
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_wss {int hardware; int mode; int reg_lock; scalar_t__ capture_substream; scalar_t__ playback_substream; scalar_t__ single_dma; TYPE_1__* timer; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int sticks; } ;


 int CS4231P (int ) ;
 unsigned char CS4231_ALL_IRQS ;
 int CS4231_IRQ_STATUS ;
 unsigned char CS4231_PLAYBACK_IRQ ;
 unsigned char CS4231_RECORD_IRQ ;
 unsigned char CS4231_TIMER_IRQ ;
 int IRQ_HANDLED ;
 int STATUS ;
 int WSS_HW_AD1848_MASK ;
 int WSS_HW_INTERWAVE ;
 int WSS_MODE_PLAY ;
 int WSS_MODE_RECORD ;
 int snd_pcm_period_elapsed (scalar_t__) ;
 int snd_timer_interrupt (TYPE_1__*,int ) ;
 unsigned char snd_wss_in (struct snd_wss*,int ) ;
 int snd_wss_out (struct snd_wss*,int ,unsigned char) ;
 int snd_wss_overrange (struct snd_wss*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wss_outb (struct snd_wss*,int ,int ) ;

irqreturn_t snd_wss_interrupt(int irq, void *dev_id)
{
 struct snd_wss *chip = dev_id;
 unsigned char status;

 if (chip->hardware & WSS_HW_AD1848_MASK)

  status = CS4231_PLAYBACK_IRQ;
 else
  status = snd_wss_in(chip, CS4231_IRQ_STATUS);
 if (status & CS4231_TIMER_IRQ) {
  if (chip->timer)
   snd_timer_interrupt(chip->timer, chip->timer->sticks);
 }
 if (chip->single_dma && chip->hardware != WSS_HW_INTERWAVE) {
  if (status & CS4231_PLAYBACK_IRQ) {
   if (chip->mode & WSS_MODE_PLAY) {
    if (chip->playback_substream)
     snd_pcm_period_elapsed(chip->playback_substream);
   }
   if (chip->mode & WSS_MODE_RECORD) {
    if (chip->capture_substream) {
     snd_wss_overrange(chip);
     snd_pcm_period_elapsed(chip->capture_substream);
    }
   }
  }
 } else {
  if (status & CS4231_PLAYBACK_IRQ) {
   if (chip->playback_substream)
    snd_pcm_period_elapsed(chip->playback_substream);
  }
  if (status & CS4231_RECORD_IRQ) {
   if (chip->capture_substream) {
    snd_wss_overrange(chip);
    snd_pcm_period_elapsed(chip->capture_substream);
   }
  }
 }

 spin_lock(&chip->reg_lock);
 status = ~CS4231_ALL_IRQS | ~status;
 if (chip->hardware & WSS_HW_AD1848_MASK)
  wss_outb(chip, CS4231P(STATUS), 0);
 else
  snd_wss_out(chip, CS4231_IRQ_STATUS, status);
 spin_unlock(&chip->reg_lock);
 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct echoaudio {int* last_period; int midi_buffer; scalar_t__ midi_in; int lock; struct snd_pcm_substream** substream; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int period_size; } ;


 int DE_MID (char*) ;
 int DSP_MAXPIPES ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int pcm_pointer (struct snd_pcm_substream*) ;
 int service_irq (struct echoaudio*) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 int snd_rawmidi_receive (scalar_t__,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t snd_echo_interrupt(int irq, void *dev_id)
{
 struct echoaudio *chip = dev_id;
 struct snd_pcm_substream *substream;
 int period, ss, st;

 spin_lock(&chip->lock);
 st = service_irq(chip);
 if (st < 0) {
  spin_unlock(&chip->lock);
  return IRQ_NONE;
 }


 for (ss = 0; ss < DSP_MAXPIPES; ss++) {
  if ((substream = chip->substream[ss])) {
   period = pcm_pointer(substream) /
    substream->runtime->period_size;
   if (period != chip->last_period[ss]) {
    chip->last_period[ss] = period;
    spin_unlock(&chip->lock);
    snd_pcm_period_elapsed(substream);
    spin_lock(&chip->lock);
   }
  }
 }
 spin_unlock(&chip->lock);







 return IRQ_HANDLED;
}

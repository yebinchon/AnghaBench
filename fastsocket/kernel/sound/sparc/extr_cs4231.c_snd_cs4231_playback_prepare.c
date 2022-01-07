
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; } ;
struct snd_cs4231 {int* image; int lock; scalar_t__ p_periods_sent; } ;


 int BUG_ON (int) ;
 size_t CS4231_IFACE_CTRL ;
 int CS4231_PLAYBACK_ENABLE ;
 int CS4231_PLAYBACK_PIO ;
 struct snd_cs4231* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_cs4231_playback_prepare(struct snd_pcm_substream *substream)
{
 struct snd_cs4231 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned long flags;

 spin_lock_irqsave(&chip->lock, flags);

 chip->image[CS4231_IFACE_CTRL] &= ~(CS4231_PLAYBACK_ENABLE |
         CS4231_PLAYBACK_PIO);

 BUG_ON(runtime->period_size > 0xffff + 1);

 chip->p_periods_sent = 0;
 spin_unlock_irqrestore(&chip->lock, flags);

 return 0;
}

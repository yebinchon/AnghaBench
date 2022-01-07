
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct pcm_substream {int lock; int dma_off; } ;
struct pcm_runtime {scalar_t__ panic; } ;
typedef int snd_pcm_uframes_t ;


 int SNDRV_PCM_STATE_XRUN ;
 struct pcm_runtime* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pcm_substream* usb6fire_pcm_get_substream (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t usb6fire_pcm_pointer(
  struct snd_pcm_substream *alsa_sub)
{
 struct pcm_substream *sub = usb6fire_pcm_get_substream(alsa_sub);
 struct pcm_runtime *rt = snd_pcm_substream_chip(alsa_sub);
 unsigned long flags;
 snd_pcm_uframes_t ret;

 if (rt->panic || !sub)
  return SNDRV_PCM_STATE_XRUN;

 spin_lock_irqsave(&sub->lock, flags);
 ret = sub->dma_off;
 spin_unlock_irqrestore(&sub->lock, flags);
 return ret;
}

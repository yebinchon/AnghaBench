
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_korg1212 {size_t cardState; int capture_pid; int lock; scalar_t__ periodsize; int * capture_substream; } ;


 int K1212_DEBUG_PRINTK (char*,int ) ;
 int snd_korg1212_CloseCard (struct snd_korg1212*) ;
 struct snd_korg1212* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int * stateName ;

__attribute__((used)) static int snd_korg1212_capture_close(struct snd_pcm_substream *substream)
{
        unsigned long flags;
        struct snd_korg1212 *korg1212 = snd_pcm_substream_chip(substream);

 K1212_DEBUG_PRINTK("K1212_DEBUG: snd_korg1212_capture_close [%s]\n",
      stateName[korg1212->cardState]);

        spin_lock_irqsave(&korg1212->lock, flags);

 korg1212->capture_pid = -1;
        korg1212->capture_substream = ((void*)0);
        korg1212->periodsize = 0;

        spin_unlock_irqrestore(&korg1212->lock, flags);

 snd_korg1212_CloseCard(korg1212);
        return 0;
}

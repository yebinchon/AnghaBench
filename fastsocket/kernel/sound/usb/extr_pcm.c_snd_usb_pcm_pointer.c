
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usb_substream {unsigned int hwptr_done; int lock; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
typedef unsigned int snd_pcm_uframes_t ;
struct TYPE_2__ {int frame_bits; int rate; int delay; scalar_t__ private_data; } ;


 int snd_usb_pcm_delay (struct snd_usb_substream*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t snd_usb_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_usb_substream *subs;
 unsigned int hwptr_done;

 subs = (struct snd_usb_substream *)substream->runtime->private_data;
 spin_lock(&subs->lock);
 hwptr_done = subs->hwptr_done;
 substream->runtime->delay = snd_usb_pcm_delay(subs,
      substream->runtime->rate);
 spin_unlock(&subs->lock);
 return hwptr_done / (substream->runtime->frame_bits >> 3);
}

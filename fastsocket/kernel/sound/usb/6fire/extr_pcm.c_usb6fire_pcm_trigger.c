
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct pcm_substream {int active; int lock; } ;
struct pcm_runtime {scalar_t__ panic; } ;


 int EINVAL ;
 int ENODEV ;
 int EPIPE ;




 struct pcm_runtime* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pcm_substream* usb6fire_pcm_get_substream (struct snd_pcm_substream*) ;

__attribute__((used)) static int usb6fire_pcm_trigger(struct snd_pcm_substream *alsa_sub, int cmd)
{
 struct pcm_substream *sub = usb6fire_pcm_get_substream(alsa_sub);
 struct pcm_runtime *rt = snd_pcm_substream_chip(alsa_sub);
 unsigned long flags;

 if (rt->panic)
  return -EPIPE;
 if (!sub)
  return -ENODEV;

 switch (cmd) {
 case 129:
 case 130:
  spin_lock_irqsave(&sub->lock, flags);
  sub->active = 1;
  spin_unlock_irqrestore(&sub->lock, flags);
  return 0;

 case 128:
 case 131:
  spin_lock_irqsave(&sub->lock, flags);
  sub->active = 0;
  spin_unlock_irqrestore(&sub->lock, flags);
  return 0;

 default:
  return -EINVAL;
 }
}

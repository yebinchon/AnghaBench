
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* ops; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int period_size; unsigned int buffer_size; int rate; } ;
struct ct_timer_instance {unsigned int position; int lock; int timer; scalar_t__ running; struct ct_atc_pcm* apcm; struct snd_pcm_substream* substream; } ;
struct ct_atc_pcm {int (* interrupt ) (struct ct_atc_pcm*) ;} ;
struct TYPE_2__ {unsigned int (* pointer ) (struct snd_pcm_substream*) ;} ;


 unsigned int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int stub1 (struct snd_pcm_substream*) ;
 int stub2 (struct ct_atc_pcm*) ;

__attribute__((used)) static void ct_systimer_callback(unsigned long data)
{
 struct ct_timer_instance *ti = (struct ct_timer_instance *)data;
 struct snd_pcm_substream *substream = ti->substream;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct ct_atc_pcm *apcm = ti->apcm;
 unsigned int period_size = runtime->period_size;
 unsigned int buffer_size = runtime->buffer_size;
 unsigned long flags;
 unsigned int position, dist, interval;

 position = substream->ops->pointer(substream);
 dist = (position + buffer_size - ti->position) % buffer_size;
 if (dist >= period_size ||
     position / period_size != ti->position / period_size) {
  apcm->interrupt(apcm);
  ti->position = position;
 }


 interval = ((period_size - (position % period_size))
     * HZ + (runtime->rate - 1)) / runtime->rate + HZ * 5 / 1000;
 spin_lock_irqsave(&ti->lock, flags);
 if (ti->running)
  mod_timer(&ti->timer, jiffies + interval);
 spin_unlock_irqrestore(&ti->lock, flags);
}

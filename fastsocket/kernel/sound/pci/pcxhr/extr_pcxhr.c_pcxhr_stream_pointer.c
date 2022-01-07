
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct snd_pcxhr {TYPE_1__* mgr; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; struct pcxhr_stream* private_data; } ;
struct pcxhr_stream {int timer_buf_periods; scalar_t__ timer_period_frag; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {int lock; } ;


 struct snd_pcxhr* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static snd_pcm_uframes_t pcxhr_stream_pointer(struct snd_pcm_substream *subs)
{
 unsigned long flags;
 u_int32_t timer_period_frag;
 int timer_buf_periods;
 struct snd_pcxhr *chip = snd_pcm_substream_chip(subs);
 struct snd_pcm_runtime *runtime = subs->runtime;
 struct pcxhr_stream *stream = runtime->private_data;

 spin_lock_irqsave(&chip->mgr->lock, flags);


 timer_period_frag = stream->timer_period_frag;
 timer_buf_periods = stream->timer_buf_periods;

 spin_unlock_irqrestore(&chip->mgr->lock, flags);

 return (snd_pcm_uframes_t)((timer_buf_periods * runtime->period_size) +
       timer_period_frag);
}

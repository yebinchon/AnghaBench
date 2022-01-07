
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {int lock; scalar_t__ avail; scalar_t__ hw_ptr; scalar_t__ appl_ptr; scalar_t__ drain; } ;


 int snd_rawmidi_input_trigger (struct snd_rawmidi_substream*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_rawmidi_drain_input(struct snd_rawmidi_substream *substream)
{
 unsigned long flags;
 struct snd_rawmidi_runtime *runtime = substream->runtime;

 snd_rawmidi_input_trigger(substream, 0);
 runtime->drain = 0;
 spin_lock_irqsave(&runtime->lock, flags);
 runtime->appl_ptr = runtime->hw_ptr = 0;
 runtime->avail = 0;
 spin_unlock_irqrestore(&runtime->lock, flags);
 return 0;
}

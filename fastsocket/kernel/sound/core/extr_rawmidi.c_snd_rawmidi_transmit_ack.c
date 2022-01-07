
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int bytes; struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {int avail; int buffer_size; int hw_ptr; int lock; int sleep; scalar_t__ drain; int * buffer; } ;


 int EINVAL ;
 int snd_BUG_ON (int) ;
 int snd_printd (char*) ;
 scalar_t__ snd_rawmidi_ready (struct snd_rawmidi_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

int snd_rawmidi_transmit_ack(struct snd_rawmidi_substream *substream, int count)
{
 unsigned long flags;
 struct snd_rawmidi_runtime *runtime = substream->runtime;

 if (runtime->buffer == ((void*)0)) {
  snd_printd("snd_rawmidi_transmit_ack: output is not active!!!\n");
  return -EINVAL;
 }
 spin_lock_irqsave(&runtime->lock, flags);
 snd_BUG_ON(runtime->avail + count > runtime->buffer_size);
 runtime->hw_ptr += count;
 runtime->hw_ptr %= runtime->buffer_size;
 runtime->avail += count;
 substream->bytes += count;
 if (count > 0) {
  if (runtime->drain || snd_rawmidi_ready(substream))
   wake_up(&runtime->sleep);
 }
 spin_unlock_irqrestore(&runtime->lock, flags);
 return count;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {scalar_t__ avail; scalar_t__ buffer_size; int lock; int * buffer; } ;


 int snd_printd (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_rawmidi_transmit_empty(struct snd_rawmidi_substream *substream)
{
 struct snd_rawmidi_runtime *runtime = substream->runtime;
 int result;
 unsigned long flags;

 if (runtime->buffer == ((void*)0)) {
  snd_printd("snd_rawmidi_transmit_empty: output is not active!!!\n");
  return 1;
 }
 spin_lock_irqsave(&runtime->lock, flags);
 result = runtime->avail >= runtime->buffer_size;
 spin_unlock_irqrestore(&runtime->lock, flags);
 return result;
}

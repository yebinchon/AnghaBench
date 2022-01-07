
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct midi_runtime {int in_lock; struct snd_rawmidi_substream* in; } ;
struct TYPE_2__ {struct midi_runtime* private_data; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void usb6fire_midi_in_trigger(
  struct snd_rawmidi_substream *alsa_sub, int up)
{
 struct midi_runtime *rt = alsa_sub->rmidi->private_data;
 unsigned long flags;

 spin_lock_irqsave(&rt->in_lock, flags);
 if (up)
  rt->in = alsa_sub;
 else
  rt->in = ((void*)0);
 spin_unlock_irqrestore(&rt->in_lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_6__ {unsigned long data; scalar_t__ expires; int function; } ;
struct hdspm_midi {scalar_t__ istimer; int lock; TYPE_2__ timer; } ;
struct TYPE_5__ {struct hdspm_midi* private_data; } ;


 int add_timer (TYPE_2__*) ;
 int del_timer (TYPE_2__*) ;
 int init_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int snd_hdspm_midi_output_timer ;
 int snd_hdspm_midi_output_write (struct hdspm_midi*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
snd_hdspm_midi_output_trigger(struct snd_rawmidi_substream *substream, int up)
{
 struct hdspm_midi *hmidi;
 unsigned long flags;

 hmidi = substream->rmidi->private_data;
 spin_lock_irqsave (&hmidi->lock, flags);
 if (up) {
  if (!hmidi->istimer) {
   init_timer(&hmidi->timer);
   hmidi->timer.function = snd_hdspm_midi_output_timer;
   hmidi->timer.data = (unsigned long) hmidi;
   hmidi->timer.expires = 1 + jiffies;
   add_timer(&hmidi->timer);
   hmidi->istimer++;
  }
 } else {
  if (hmidi->istimer && --hmidi->istimer <= 0)
   del_timer (&hmidi->timer);
 }
 spin_unlock_irqrestore (&hmidi->lock, flags);
 if (up)
  snd_hdspm_midi_output_write(hmidi);
}

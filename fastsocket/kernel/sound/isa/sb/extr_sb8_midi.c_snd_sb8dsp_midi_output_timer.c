
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;
struct snd_sb {int open_lock; TYPE_2__ midi_timer; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_3__ {struct snd_sb* private_data; } ;


 int add_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int snd_sb8dsp_midi_output_write (struct snd_rawmidi_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_sb8dsp_midi_output_timer(unsigned long data)
{
 struct snd_rawmidi_substream *substream = (struct snd_rawmidi_substream *) data;
 struct snd_sb * chip = substream->rmidi->private_data;
 unsigned long flags;

 spin_lock_irqsave(&chip->open_lock, flags);
 chip->midi_timer.expires = 1 + jiffies;
 add_timer(&chip->midi_timer);
 spin_unlock_irqrestore(&chip->open_lock, flags);
 snd_sb8dsp_midi_output_write(substream);
}

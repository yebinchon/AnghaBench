
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sb {int open; int open_lock; int * midi_substream_output; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_sb* private_data; } ;


 int SB_OPEN_MIDI_INPUT ;
 int SB_OPEN_MIDI_OUTPUT ;
 int SB_OPEN_MIDI_OUTPUT_TRIGGER ;
 int snd_sbdsp_reset (struct snd_sb*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_sb8dsp_midi_output_close(struct snd_rawmidi_substream *substream)
{
 unsigned long flags;
 struct snd_sb *chip;

 chip = substream->rmidi->private_data;
 spin_lock_irqsave(&chip->open_lock, flags);
 chip->open &= ~(SB_OPEN_MIDI_OUTPUT | SB_OPEN_MIDI_OUTPUT_TRIGGER);
 chip->midi_substream_output = ((void*)0);
 if (!(chip->open & SB_OPEN_MIDI_INPUT)) {
  spin_unlock_irqrestore(&chip->open_lock, flags);
  snd_sbdsp_reset(chip);
 } else {
  spin_unlock_irqrestore(&chip->open_lock, flags);
 }
 return 0;
}

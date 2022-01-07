
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sb {int open; scalar_t__ hardware; int open_lock; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_sb* private_data; } ;


 int SB_DSP_MIDI_INPUT_IRQ ;
 scalar_t__ SB_HW_20 ;
 int SB_OPEN_MIDI_INPUT_TRIGGER ;
 int snd_sbdsp_command (struct snd_sb*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_sb8dsp_midi_input_trigger(struct snd_rawmidi_substream *substream, int up)
{
 unsigned long flags;
 struct snd_sb *chip;

 chip = substream->rmidi->private_data;
 spin_lock_irqsave(&chip->open_lock, flags);
 if (up) {
  if (!(chip->open & SB_OPEN_MIDI_INPUT_TRIGGER)) {
   if (chip->hardware < SB_HW_20)
    snd_sbdsp_command(chip, SB_DSP_MIDI_INPUT_IRQ);
   chip->open |= SB_OPEN_MIDI_INPUT_TRIGGER;
  }
 } else {
  if (chip->open & SB_OPEN_MIDI_INPUT_TRIGGER) {
   if (chip->hardware < SB_HW_20)
    snd_sbdsp_command(chip, SB_DSP_MIDI_INPUT_IRQ);
   chip->open &= ~SB_OPEN_MIDI_INPUT_TRIGGER;
  }
 }
 spin_unlock_irqrestore(&chip->open_lock, flags);
}

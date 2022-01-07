
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sb {scalar_t__ hardware; unsigned int open; int open_lock; struct snd_rawmidi_substream* midi_substream_output; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_sb* private_data; } ;


 int EAGAIN ;
 int SB_DSP_MIDI_UART_IRQ ;
 scalar_t__ SB_HW_20 ;
 unsigned int SB_OPEN_MIDI_INPUT ;
 unsigned int SB_OPEN_MIDI_INPUT_TRIGGER ;
 unsigned int SB_OPEN_MIDI_OUTPUT ;
 int snd_sbdsp_command (struct snd_sb*,int ) ;
 int snd_sbdsp_reset (struct snd_sb*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_sb8dsp_midi_output_open(struct snd_rawmidi_substream *substream)
{
 unsigned long flags;
 struct snd_sb *chip;
 unsigned int valid_open_flags;

 chip = substream->rmidi->private_data;
 valid_open_flags = chip->hardware >= SB_HW_20
  ? SB_OPEN_MIDI_INPUT | SB_OPEN_MIDI_INPUT_TRIGGER : 0;
 spin_lock_irqsave(&chip->open_lock, flags);
 if (chip->open & ~valid_open_flags) {
  spin_unlock_irqrestore(&chip->open_lock, flags);
  return -EAGAIN;
 }
 chip->open |= SB_OPEN_MIDI_OUTPUT;
 chip->midi_substream_output = substream;
 if (!(chip->open & SB_OPEN_MIDI_INPUT)) {
  spin_unlock_irqrestore(&chip->open_lock, flags);
  snd_sbdsp_reset(chip);
  if (chip->hardware >= SB_HW_20)
   snd_sbdsp_command(chip, SB_DSP_MIDI_UART_IRQ);
 } else {
  spin_unlock_irqrestore(&chip->open_lock, flags);
 }
 return 0;
}

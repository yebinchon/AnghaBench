
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sb {scalar_t__ hardware; int open_lock; int midi_timer; int open; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_sb* private_data; } ;


 int SBP (struct snd_sb*,int ) ;
 char SB_DSP_MIDI_OUTPUT ;
 scalar_t__ SB_HW_20 ;
 int SB_OPEN_MIDI_OUTPUT_TRIGGER ;
 int STATUS ;
 int WRITE ;
 int del_timer (int *) ;
 int inb (int ) ;
 int outb (char,int ) ;
 int snd_rawmidi_transmit_ack (struct snd_rawmidi_substream*,int) ;
 int snd_rawmidi_transmit_peek (struct snd_rawmidi_substream*,char*,int) ;
 int snd_sbdsp_command (struct snd_sb*,char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_sb8dsp_midi_output_write(struct snd_rawmidi_substream *substream)
{
 unsigned long flags;
 struct snd_sb *chip;
 char byte;
 int max = 32;


 chip = substream->rmidi->private_data;
 while (max-- > 0) {
  spin_lock_irqsave(&chip->open_lock, flags);
  if (snd_rawmidi_transmit_peek(substream, &byte, 1) != 1) {
   chip->open &= ~SB_OPEN_MIDI_OUTPUT_TRIGGER;
   del_timer(&chip->midi_timer);
   spin_unlock_irqrestore(&chip->open_lock, flags);
   break;
  }
  if (chip->hardware >= SB_HW_20) {
   int timeout = 8;
   while ((inb(SBP(chip, STATUS)) & 0x80) != 0 && --timeout > 0)
    ;
   if (timeout == 0) {

    spin_unlock_irqrestore(&chip->open_lock, flags);
    break;
   }
   outb(byte, SBP(chip, WRITE));
  } else {
   snd_sbdsp_command(chip, SB_DSP_MIDI_OUTPUT);
   snd_sbdsp_command(chip, byte);
  }
  snd_rawmidi_transmit_ack(substream, 1);
  spin_unlock_irqrestore(&chip->open_lock, flags);
 }
}

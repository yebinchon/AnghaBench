
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_ca_midi {int midi_mode; int open_lock; int enter_uart; int reset; struct snd_rawmidi_substream* substream_input; int dev_id; } ;
struct TYPE_2__ {struct snd_ca_midi* private_data; } ;


 int CA_MIDI_MODE_INPUT ;
 int CA_MIDI_MODE_OUTPUT ;
 int ENXIO ;
 int ca_midi_cmd (struct snd_ca_midi*,int ,int) ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ca_midi_input_open(struct snd_rawmidi_substream *substream)
{
 struct snd_ca_midi *midi = substream->rmidi->private_data;
 unsigned long flags;

 if (snd_BUG_ON(!midi->dev_id))
  return -ENXIO;
 spin_lock_irqsave(&midi->open_lock, flags);
 midi->midi_mode |= CA_MIDI_MODE_INPUT;
 midi->substream_input = substream;
 if (!(midi->midi_mode & CA_MIDI_MODE_OUTPUT)) {
  spin_unlock_irqrestore(&midi->open_lock, flags);
  ca_midi_cmd(midi, midi->reset, 1);
  ca_midi_cmd(midi, midi->enter_uart, 1);
 } else {
  spin_unlock_irqrestore(&midi->open_lock, flags);
 }
 return 0;
}

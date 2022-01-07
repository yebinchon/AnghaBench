
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_midi_channel {int* control; int drum_channel; } ;
struct TYPE_2__ {int midi_mode; } ;
struct snd_emux_port {TYPE_1__ chset; } ;


 size_t MIDI_CTL_LSB_BANK ;
 size_t MIDI_CTL_MSB_BANK ;



__attribute__((used)) static int
get_bank(struct snd_emux_port *port, struct snd_midi_channel *chan)
{
 int val;

 switch (port->chset.midi_mode) {
 case 128:
  val = chan->control[MIDI_CTL_MSB_BANK];
  if (val == 127)
   return 128;
  return chan->control[MIDI_CTL_LSB_BANK];

 case 129:
  if (chan->drum_channel)
   return 128;

  return chan->control[MIDI_CTL_MSB_BANK];

 default:
  if (chan->drum_channel)
   return 128;
  return chan->control[MIDI_CTL_MSB_BANK];
 }
}

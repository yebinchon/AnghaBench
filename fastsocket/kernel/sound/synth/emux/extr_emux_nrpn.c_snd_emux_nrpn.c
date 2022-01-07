
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_midi_channel_set {int dummy; } ;
struct snd_midi_channel {int* control; } ;
struct TYPE_2__ {scalar_t__ midi_mode; } ;
struct snd_emux_port {TYPE_1__ chset; } ;


 int ARRAY_SIZE (int ) ;
 int EMUX_FX_FLAG_ADD ;
 int EMUX_FX_FLAG_SET ;
 size_t MIDI_CTL_LSB_DATA_ENTRY ;
 size_t MIDI_CTL_MSB_DATA_ENTRY ;
 size_t MIDI_CTL_NONREG_PARM_NUM_LSB ;
 size_t MIDI_CTL_NONREG_PARM_NUM_MSB ;
 scalar_t__ SNDRV_MIDI_MODE_GS ;
 int awe_effects ;
 int gs_effects ;
 int send_converted_effect (int ,int ,struct snd_emux_port*,struct snd_midi_channel*,int,int,int ) ;
 scalar_t__ snd_BUG_ON (int) ;

void
snd_emux_nrpn(void *p, struct snd_midi_channel *chan,
       struct snd_midi_channel_set *chset)
{
 struct snd_emux_port *port;

 port = p;
 if (snd_BUG_ON(!port || !chan))
  return;

 if (chan->control[MIDI_CTL_NONREG_PARM_NUM_MSB] == 127 &&
     chan->control[MIDI_CTL_NONREG_PARM_NUM_LSB] <= 26) {
  int val;


  val = (chan->control[MIDI_CTL_MSB_DATA_ENTRY] << 7) |
   chan->control[MIDI_CTL_LSB_DATA_ENTRY];
  val -= 8192;
  send_converted_effect
   (awe_effects, ARRAY_SIZE(awe_effects),
    port, chan, chan->control[MIDI_CTL_NONREG_PARM_NUM_LSB],
    val, EMUX_FX_FLAG_SET);
  return;
 }

 if (port->chset.midi_mode == SNDRV_MIDI_MODE_GS &&
     chan->control[MIDI_CTL_NONREG_PARM_NUM_MSB] == 1) {
  int val;


  val = chan->control[MIDI_CTL_MSB_DATA_ENTRY];
  send_converted_effect
   (gs_effects, ARRAY_SIZE(gs_effects),
    port, chan, chan->control[MIDI_CTL_NONREG_PARM_NUM_LSB],
    val, EMUX_FX_FLAG_ADD);
  return;
 }
}

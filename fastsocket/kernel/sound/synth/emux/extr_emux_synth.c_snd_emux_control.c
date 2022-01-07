
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_midi_channel {int* control; } ;
struct TYPE_2__ {scalar_t__ midi_mode; } ;
struct snd_emux_port {TYPE_1__ chset; } ;


 int EMUX_FX_CUTOFF ;
 int EMUX_FX_FLAG_ADD ;
 int EMUX_FX_FLAG_OFF ;







 int SNDRV_EMUX_UPDATE_FM2FRQ2 ;
 int SNDRV_EMUX_UPDATE_FMMOD ;
 int SNDRV_EMUX_UPDATE_PAN ;
 int SNDRV_EMUX_UPDATE_PITCH ;
 int SNDRV_EMUX_UPDATE_VOLUME ;
 scalar_t__ SNDRV_MIDI_MODE_XG ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_emux_send_effect (struct snd_emux_port*,struct snd_midi_channel*,int ,int,int ) ;
 int snd_emux_update_channel (struct snd_emux_port*,struct snd_midi_channel*,int) ;
 int snd_emux_xg_control (struct snd_emux_port*,struct snd_midi_channel*,int) ;

void
snd_emux_control(void *p, int type, struct snd_midi_channel *chan)
{
 struct snd_emux_port *port;

 port = p;
 if (snd_BUG_ON(!port || !chan))
  return;

 switch (type) {
 case 132:
 case 133:
  snd_emux_update_channel(port, chan, SNDRV_EMUX_UPDATE_VOLUME);
  break;

 case 130:
  snd_emux_update_channel(port, chan, SNDRV_EMUX_UPDATE_PAN);
  break;

 case 128:
  break;

 case 129:
  snd_emux_update_channel(port, chan, SNDRV_EMUX_UPDATE_PITCH);
  break;

 case 131:
 case 134:
  snd_emux_update_channel(port, chan,
     SNDRV_EMUX_UPDATE_FMMOD |
     SNDRV_EMUX_UPDATE_FM2FRQ2);
  break;

 }

 if (port->chset.midi_mode == SNDRV_MIDI_MODE_XG) {
  snd_emux_xg_control(port, chan, type);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_midi_channel_set {int dummy; } ;
struct snd_emux_port {struct snd_emux* emu; } ;
struct TYPE_2__ {int (* sysex ) (struct snd_emux*,unsigned char*,int,int,struct snd_midi_channel_set*) ;} ;
struct snd_emux {TYPE_1__ ops; } ;


 int SNDRV_EMUX_UPDATE_VOLUME ;

 scalar_t__ snd_BUG_ON (int) ;
 int snd_emux_update_port (struct snd_emux_port*,int ) ;
 int stub1 (struct snd_emux*,unsigned char*,int,int,struct snd_midi_channel_set*) ;

void
snd_emux_sysex(void *p, unsigned char *buf, int len, int parsed,
        struct snd_midi_channel_set *chset)
{
 struct snd_emux_port *port;
 struct snd_emux *emu;

 port = p;
 if (snd_BUG_ON(!port || !chset))
  return;
 emu = port->emu;

 switch (parsed) {
 case 128:
  snd_emux_update_port(port, SNDRV_EMUX_UPDATE_VOLUME);
  break;
 default:
  if (emu->ops.sysex)
   emu->ops.sysex(emu, buf, len, parsed, chset);
  break;
 }
}

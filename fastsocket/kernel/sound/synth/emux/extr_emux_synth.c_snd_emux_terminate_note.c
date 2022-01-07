
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_midi_channel {int dummy; } ;
struct snd_emux_port {struct snd_emux* emu; } ;
struct TYPE_2__ {int terminate; } ;
struct snd_emux {TYPE_1__ ops; } ;


 scalar_t__ snd_BUG_ON (int) ;
 int terminate_note1 (struct snd_emux*,int,struct snd_midi_channel*,int) ;

void
snd_emux_terminate_note(void *p, int note, struct snd_midi_channel *chan)
{
 struct snd_emux *emu;
 struct snd_emux_port *port;

 port = p;
 if (snd_BUG_ON(!port || !chan))
  return;

 emu = port->emu;
 if (snd_BUG_ON(!emu || !emu->ops.terminate))
  return;

 terminate_note1(emu, note, chan, 1);
}

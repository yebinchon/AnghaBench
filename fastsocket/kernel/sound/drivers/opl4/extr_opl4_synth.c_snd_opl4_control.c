
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl4 {int dummy; } ;
struct snd_midi_channel {int * control; } ;
 int snd_opl4_do_for_channel (struct snd_opl4*,struct snd_midi_channel*,int ) ;
 int snd_opl4_update_pan ;
 int snd_opl4_update_pitch ;
 int snd_opl4_update_vibrato_depth ;
 int snd_opl4_update_volume ;

void snd_opl4_control(void *private_data, int type, struct snd_midi_channel *chan)
{
 struct snd_opl4 *opl4 = private_data;

 switch (type) {
 case 133:
  chan->control[129] = chan->control[133];
  snd_opl4_do_for_channel(opl4, chan, snd_opl4_update_vibrato_depth);
  break;
 case 134:
  snd_opl4_do_for_channel(opl4, chan, snd_opl4_update_volume);
  break;
 case 132:
  snd_opl4_do_for_channel(opl4, chan, snd_opl4_update_pan);
  break;
 case 135:
  snd_opl4_do_for_channel(opl4, chan, snd_opl4_update_volume);
  break;
 case 128:

  break;
 case 129:
  snd_opl4_do_for_channel(opl4, chan, snd_opl4_update_vibrato_depth);
  break;
 case 130:

  break;
 case 136:




  break;
 case 131:
  snd_opl4_do_for_channel(opl4, chan, snd_opl4_update_pitch);
  break;
 }
}

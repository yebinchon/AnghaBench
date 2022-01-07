
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl4 {int dummy; } ;
struct snd_midi_channel {int dummy; } ;


 int snd_opl4_do_for_note (struct snd_opl4*,int,struct snd_midi_channel*,int ) ;
 int snd_opl4_terminate_voice ;

void snd_opl4_terminate_note(void *private_data, int note, struct snd_midi_channel *chan)
{
 struct snd_opl4 *opl4 = private_data;

 snd_opl4_do_for_note(opl4, note, chan, snd_opl4_terminate_voice);
}

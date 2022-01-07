
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl4 {int chset; } ;


 int snd_midi_channel_free_set (int ) ;

__attribute__((used)) static void snd_opl4_seq_free_port(void *private_data)
{
 struct snd_opl4 *opl4 = private_data;

 snd_midi_channel_free_set(opl4->chset);
}

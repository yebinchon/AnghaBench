
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_channel {int gm_volume; int gm_expression; int gm_pan; int control; } ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void snd_midi_reset_controllers(struct snd_midi_channel *chan)
{
 memset(chan->control, 0, sizeof(chan->control));
 chan->gm_volume = 127;
 chan->gm_expression = 127;
 chan->gm_pan = 64;
}

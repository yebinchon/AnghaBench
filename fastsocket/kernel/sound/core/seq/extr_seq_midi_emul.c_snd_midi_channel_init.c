
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_channel {int number; int gm_rpn_pitch_bend_range; int drum_channel; scalar_t__ gm_rpn_coarse_tuning; scalar_t__ gm_rpn_fine_tuning; int * private; } ;


 int memset (struct snd_midi_channel*,int ,int) ;
 int snd_midi_reset_controllers (struct snd_midi_channel*) ;

__attribute__((used)) static void snd_midi_channel_init(struct snd_midi_channel *p, int n)
{
 if (p == ((void*)0))
  return;

 memset(p, 0, sizeof(struct snd_midi_channel));
 p->private = ((void*)0);
 p->number = n;

 snd_midi_reset_controllers(p);
 p->gm_rpn_pitch_bend_range = 256;
 p->gm_rpn_fine_tuning = 0;
 p->gm_rpn_coarse_tuning = 0;

 if (n == 9)
  p->drum_channel = 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_channel_set {int max_channels; struct snd_midi_channel* channels; } ;
struct snd_midi_channel {int gm_rpn_pitch_bend_range; int drum_channel; scalar_t__ gm_rpn_coarse_tuning; scalar_t__ gm_rpn_fine_tuning; } ;


 int snd_midi_reset_controllers (struct snd_midi_channel*) ;

__attribute__((used)) static void
reset_all_channels(struct snd_midi_channel_set *chset)
{
 int ch;
 for (ch = 0; ch < chset->max_channels; ch++) {
  struct snd_midi_channel *chan = chset->channels + ch;
  snd_midi_reset_controllers(chan);
  chan->gm_rpn_pitch_bend_range = 256;
  chan->gm_rpn_fine_tuning = 0;
  chan->gm_rpn_coarse_tuning = 0;

  if (ch == 9)
   chan->drum_channel = 1;
  else
   chan->drum_channel = 0;
 }
}

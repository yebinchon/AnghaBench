
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_channel_set {int gs_reverb_mode; int gs_chorus_mode; } ;
struct snd_emux {struct snd_emu8000* hw; } ;
struct snd_emu8000 {int reverb_mode; int chorus_mode; } ;




 int snd_emu8000_update_chorus_mode (struct snd_emu8000*) ;
 int snd_emu8000_update_reverb_mode (struct snd_emu8000*) ;

__attribute__((used)) static void
sysex(struct snd_emux *emu, char *buf, int len, int parsed, struct snd_midi_channel_set *chset)
{
 struct snd_emu8000 *hw;

 hw = emu->hw;

 switch (parsed) {
 case 129:
  hw->chorus_mode = chset->gs_chorus_mode;
  snd_emu8000_update_chorus_mode(hw);
  break;

 case 128:
  hw->reverb_mode = chset->gs_reverb_mode;
  snd_emu8000_update_reverb_mode(hw);
  break;
 }
}

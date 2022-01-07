
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int put; } ;
struct snd_ac97 {int dummy; } ;


 int AC97_POWERDOWN ;
 int ENOENT ;
 int bind_hp_volsw_put ;
 struct snd_kcontrol* ctl_find (struct snd_ac97*,char*,int *) ;
 int hp_master_mute_sw_put ;
 int snd_ac97_remove_ctl (struct snd_ac97*,char*,char*) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,int) ;

__attribute__((used)) static int tune_hp_mute_led(struct snd_ac97 *ac97)
{
 struct snd_kcontrol *msw = ctl_find(ac97, "Master Playback Switch", ((void*)0));
 struct snd_kcontrol *mvol = ctl_find(ac97, "Master Playback Volume", ((void*)0));
 if (! msw || ! mvol)
  return -ENOENT;
 msw->put = hp_master_mute_sw_put;
 mvol->put = bind_hp_volsw_put;
 snd_ac97_remove_ctl(ac97, "External Amplifier", ((void*)0));
 snd_ac97_remove_ctl(ac97, "Headphone Playback", "Switch");
 snd_ac97_remove_ctl(ac97, "Headphone Playback", "Volume");
 snd_ac97_update_bits(ac97, AC97_POWERDOWN, 0x8000, 0x8000);
 return 0;
}

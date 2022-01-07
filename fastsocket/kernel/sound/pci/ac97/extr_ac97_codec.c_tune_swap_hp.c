
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int ENOENT ;
 int * ctl_find (struct snd_ac97*,char*,int *) ;
 int snd_ac97_rename_vol_ctl (struct snd_ac97*,char*,char*) ;

__attribute__((used)) static int tune_swap_hp(struct snd_ac97 *ac97)
{
 if (ctl_find(ac97, "Headphone Playback Switch", ((void*)0)) == ((void*)0))
  return -ENOENT;
 snd_ac97_rename_vol_ctl(ac97, "Master Playback", "Line-Out Playback");
 snd_ac97_rename_vol_ctl(ac97, "Headphone Playback", "Master Playback");
 return 0;
}

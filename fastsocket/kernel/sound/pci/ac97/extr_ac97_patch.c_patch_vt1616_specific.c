
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * p; } ;
struct snd_kcontrol {TYPE_1__ tlv; } ;
struct snd_ac97 {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int patch_build_controls (struct snd_ac97*,int *,int) ;
 int slave_sws_vt1616 ;
 int slave_vols_vt1616 ;
 int snd_ac97_add_vmaster (struct snd_ac97*,char*,int *,int ) ;
 int * snd_ac97_controls_vt1616 ;
 struct snd_kcontrol* snd_ac97_find_mixer_ctl (struct snd_ac97*,char*) ;
 int snd_ac97_rename_vol_ctl (struct snd_ac97*,char*,char*) ;
 scalar_t__ snd_ac97_try_bit (struct snd_ac97*,int,int) ;

__attribute__((used)) static int patch_vt1616_specific(struct snd_ac97 * ac97)
{
 struct snd_kcontrol *kctl;
 int err;

 if (snd_ac97_try_bit(ac97, 0x5a, 9))
  if ((err = patch_build_controls(ac97, &snd_ac97_controls_vt1616[0], 1)) < 0)
   return err;
 if ((err = patch_build_controls(ac97, &snd_ac97_controls_vt1616[1], ARRAY_SIZE(snd_ac97_controls_vt1616) - 1)) < 0)
  return err;


 kctl = snd_ac97_find_mixer_ctl(ac97, "Master Playback Volume");
 if (!kctl)
  return -EINVAL;

 snd_ac97_rename_vol_ctl(ac97, "Master Playback", "Front Playback");

 err = snd_ac97_add_vmaster(ac97, "Master Playback Volume",
       kctl->tlv.p, slave_vols_vt1616);
 if (err < 0)
  return err;

 err = snd_ac97_add_vmaster(ac97, "Master Playback Switch",
       ((void*)0), slave_sws_vt1616);
 if (err < 0)
  return err;

 return 0;
}

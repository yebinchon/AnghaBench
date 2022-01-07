
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int ext_id; } ;


 int AC97_EI_SPDIF ;
 int ARRAY_SIZE (int ) ;
 int patch_build_controls (struct snd_ac97*,int ,int ) ;
 int snd_ac97_controls_alc850 ;
 int snd_ac97_spdif_controls_alc655 ;

__attribute__((used)) static int patch_alc850_specific(struct snd_ac97 *ac97)
{
 int err;

 if ((err = patch_build_controls(ac97, snd_ac97_controls_alc850, ARRAY_SIZE(snd_ac97_controls_alc850))) < 0)
  return err;
 if (ac97->ext_id & AC97_EI_SPDIF) {
  if ((err = patch_build_controls(ac97, snd_ac97_spdif_controls_alc655, ARRAY_SIZE(snd_ac97_spdif_controls_alc655))) < 0)
   return err;
 }
 return 0;
}

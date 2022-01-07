
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int AC97_CXR_AUDIO_MISC ;
 int AC97_CXR_COPYRGT ;
 int AC97_CXR_SPDIFEN ;
 int AC97_CXR_SPDIF_MASK ;
 int patch_build_controls (struct snd_ac97*,int *,int) ;
 int * snd_ac97_conexant_controls_spdif ;
 int * snd_ac97_controls_spdif ;
 int snd_ac97_read (struct snd_ac97*,int ) ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,int) ;

__attribute__((used)) static int patch_conexant_build_spdif(struct snd_ac97 * ac97)
{
 int err;


 if ((err = patch_build_controls(ac97, &snd_ac97_controls_spdif[0], 3)) < 0)
  return err;

 if ((err = patch_build_controls(ac97, &snd_ac97_conexant_controls_spdif[0], 1)) < 0)
  return err;


 snd_ac97_write_cache(ac97, AC97_CXR_AUDIO_MISC,
        snd_ac97_read(ac97, AC97_CXR_AUDIO_MISC) & ~(AC97_CXR_SPDIFEN|AC97_CXR_COPYRGT|AC97_CXR_SPDIF_MASK));
 return 0;
}

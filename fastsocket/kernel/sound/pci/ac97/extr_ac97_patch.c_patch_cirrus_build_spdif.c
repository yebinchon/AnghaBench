
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int id; } ;


 int AC97_CSR_SPDIF ;

 int AC97_ID_CS_MASK ;
 int patch_build_controls (struct snd_ac97*,int *,int) ;
 int * snd_ac97_cirrus_controls_spdif ;
 int * snd_ac97_controls_spdif ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,int) ;

__attribute__((used)) static int patch_cirrus_build_spdif(struct snd_ac97 * ac97)
{
 int err;


 if ((err = patch_build_controls(ac97, &snd_ac97_controls_spdif[0], 3)) < 0)
  return err;

 if ((err = patch_build_controls(ac97, &snd_ac97_cirrus_controls_spdif[0], 1)) < 0)
  return err;
 switch (ac97->id & AC97_ID_CS_MASK) {
 case 128:
  if ((err = patch_build_controls(ac97, &snd_ac97_cirrus_controls_spdif[1], 1)) < 0)
   return err;
  break;
 }


 snd_ac97_write_cache(ac97, AC97_CSR_SPDIF, 0x0a20);
 return 0;
}

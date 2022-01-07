
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int AC97_SIGMATEL_ANALOG ;
 int AC97_SIGMATEL_DAC2INVERT ;
 int patch_build_controls (struct snd_ac97*,int *,int) ;
 int snd_ac97_read (struct snd_ac97*,int ) ;
 int snd_ac97_sigmatel_4speaker ;
 int * snd_ac97_sigmatel_controls ;
 int snd_ac97_sigmatel_phaseinvert ;
 scalar_t__ snd_ac97_try_bit (struct snd_ac97*,int ,int) ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,int) ;

__attribute__((used)) static int patch_sigmatel_stac97xx_specific(struct snd_ac97 * ac97)
{
 int err;

 snd_ac97_write_cache(ac97, AC97_SIGMATEL_ANALOG, snd_ac97_read(ac97, AC97_SIGMATEL_ANALOG) & ~0x0003);
 if (snd_ac97_try_bit(ac97, AC97_SIGMATEL_ANALOG, 1))
  if ((err = patch_build_controls(ac97, &snd_ac97_sigmatel_controls[0], 1)) < 0)
   return err;
 if (snd_ac97_try_bit(ac97, AC97_SIGMATEL_ANALOG, 0))
  if ((err = patch_build_controls(ac97, &snd_ac97_sigmatel_controls[1], 1)) < 0)
   return err;
 if (snd_ac97_try_bit(ac97, AC97_SIGMATEL_DAC2INVERT, 2))
  if ((err = patch_build_controls(ac97, &snd_ac97_sigmatel_4speaker, 1)) < 0)
   return err;
 if (snd_ac97_try_bit(ac97, AC97_SIGMATEL_DAC2INVERT, 3))
  if ((err = patch_build_controls(ac97, &snd_ac97_sigmatel_phaseinvert, 1)) < 0)
   return err;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int patch_ad1888_specific (struct snd_ac97*) ;
 int patch_build_controls (struct snd_ac97*,int *,int) ;
 int snd_ac97_ad198x_2cmic ;

__attribute__((used)) static int patch_ad1980_specific(struct snd_ac97 *ac97)
{
 int err;

 if ((err = patch_ad1888_specific(ac97)) < 0)
  return err;
 return patch_build_controls(ac97, &snd_ac97_ad198x_2cmic, 1);
}

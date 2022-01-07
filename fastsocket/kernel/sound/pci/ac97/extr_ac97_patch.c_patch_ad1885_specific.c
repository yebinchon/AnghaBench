
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int db_scale_6bit_6db_max ;
 int patch_build_controls (struct snd_ac97*,int ,int ) ;
 int reset_tlv (struct snd_ac97*,char*,int ) ;
 int snd_ac97_controls_ad1885 ;

__attribute__((used)) static int patch_ad1885_specific(struct snd_ac97 * ac97)
{
 int err;

 if ((err = patch_build_controls(ac97, snd_ac97_controls_ad1885, ARRAY_SIZE(snd_ac97_controls_ad1885))) < 0)
  return err;
 reset_tlv(ac97, "Headphone Playback Volume",
    db_scale_6bit_6db_max);
 return 0;
}

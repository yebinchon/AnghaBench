
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int * build_ops; } ;


 int AC97_AD_JACK_SPDIF ;
 int patch_ad1881 (struct snd_ac97*) ;
 int patch_ad1886_build_ops ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,int) ;

__attribute__((used)) static int patch_ad1886(struct snd_ac97 * ac97)
{
 patch_ad1881(ac97);


 snd_ac97_write_cache(ac97, AC97_AD_JACK_SPDIF, 0x0010);
 ac97->build_ops = &patch_ad1886_build_ops;
 return 0;
}

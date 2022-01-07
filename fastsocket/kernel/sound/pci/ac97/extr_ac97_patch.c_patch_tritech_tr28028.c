
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int AC97_SPDIF ;
 int AC97_SURROUND_MASTER ;
 int snd_ac97_write_cache (struct snd_ac97*,int,int) ;

__attribute__((used)) static int patch_tritech_tr28028(struct snd_ac97 * ac97)
{
 snd_ac97_write_cache(ac97, 0x26, 0x0300);
 snd_ac97_write_cache(ac97, 0x26, 0x0000);
 snd_ac97_write_cache(ac97, AC97_SURROUND_MASTER, 0x0000);
 snd_ac97_write_cache(ac97, AC97_SPDIF, 0x0000);
 return 0;
}

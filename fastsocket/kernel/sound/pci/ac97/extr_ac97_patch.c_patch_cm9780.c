
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int ext_id; int * rates; int * build_ops; } ;


 int AC97_CM9780_SPDIF ;
 int AC97_EI_SPDIF ;
 size_t AC97_RATES_SPDIF ;
 int SNDRV_PCM_RATE_48000 ;
 int patch_cm9780_ops ;
 unsigned short snd_ac97_read (struct snd_ac97*,int ) ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,unsigned short) ;

__attribute__((used)) static int patch_cm9780(struct snd_ac97 *ac97)
{
 unsigned short val;

 ac97->build_ops = &patch_cm9780_ops;


 if (ac97->ext_id & AC97_EI_SPDIF) {
  ac97->rates[AC97_RATES_SPDIF] = SNDRV_PCM_RATE_48000;
  val = snd_ac97_read(ac97, AC97_CM9780_SPDIF);
  val |= 0x1;
  snd_ac97_write_cache(ac97, AC97_CM9780_SPDIF, val);
 }

 return 0;
}

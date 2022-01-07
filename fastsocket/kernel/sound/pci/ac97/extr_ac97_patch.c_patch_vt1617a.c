
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int* rates; int * build_ops; int ext_id; } ;


 int AC97_EI_SPDIF ;
 size_t AC97_RATES_SPDIF ;
 int ARRAY_SIZE (int *) ;
 int SNDRV_PCM_RATE_44100 ;
 int SNDRV_PCM_RATE_48000 ;
 int patch_build_controls (struct snd_ac97*,int *,int ) ;
 int patch_vt1616_ops ;
 int * snd_ac97_controls_vt1617a ;
 int snd_ac97_read (struct snd_ac97*,int) ;
 int snd_ac97_write_cache (struct snd_ac97*,int,int) ;

__attribute__((used)) static int patch_vt1617a(struct snd_ac97 * ac97)
{
 int err = 0;
 int val;




 err = patch_build_controls(ac97, &snd_ac97_controls_vt1617a[0],
       ARRAY_SIZE(snd_ac97_controls_vt1617a));







 val = snd_ac97_read(ac97, 0x5c);
 if (!(val & 0x20))
  snd_ac97_write_cache(ac97, 0x5c, 0x20);

 ac97->ext_id |= AC97_EI_SPDIF;
 ac97->rates[AC97_RATES_SPDIF] = SNDRV_PCM_RATE_44100 | SNDRV_PCM_RATE_48000;
 ac97->build_ops = &patch_vt1616_ops;

 return err;
}

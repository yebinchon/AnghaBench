
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int ext_id; int * rates; int flags; int * build_ops; } ;


 int AC97_CSR_ACMODE ;
 int AC97_CS_SPDIF ;
 int AC97_EI_SPDIF ;
 size_t AC97_RATES_SPDIF ;
 int SNDRV_PCM_RATE_32000 ;
 int patch_cirrus_ops ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,int) ;

__attribute__((used)) static int patch_cirrus_spdif(struct snd_ac97 * ac97)
{
 ac97->build_ops = &patch_cirrus_ops;
 ac97->flags |= AC97_CS_SPDIF;
 ac97->rates[AC97_RATES_SPDIF] &= ~SNDRV_PCM_RATE_32000;
        ac97->ext_id |= AC97_EI_SPDIF;
 snd_ac97_write_cache(ac97, AC97_CSR_ACMODE, 0x0080);
 return 0;
}

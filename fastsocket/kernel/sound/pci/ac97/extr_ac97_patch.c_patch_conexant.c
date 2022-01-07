
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int * rates; int ext_id; int flags; int * build_ops; } ;


 int AC97_CX_SPDIF ;
 int AC97_EI_SPDIF ;
 size_t AC97_RATES_SPDIF ;
 int SNDRV_PCM_RATE_48000 ;
 int patch_conexant_ops ;

__attribute__((used)) static int patch_conexant(struct snd_ac97 * ac97)
{
 ac97->build_ops = &patch_conexant_ops;
 ac97->flags |= AC97_CX_SPDIF;
        ac97->ext_id |= AC97_EI_SPDIF;
 ac97->rates[AC97_RATES_SPDIF] = SNDRV_PCM_RATE_48000;
 return 0;
}

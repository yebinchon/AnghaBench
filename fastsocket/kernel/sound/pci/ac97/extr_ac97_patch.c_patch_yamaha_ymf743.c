
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int caps; int ext_id; int * rates; int * build_ops; } ;


 int AC97_BC_BASS_TREBLE ;
 int AC97_EI_SPDIF ;
 size_t AC97_RATES_SPDIF ;
 int SNDRV_PCM_RATE_48000 ;
 int patch_yamaha_ymf743_ops ;

__attribute__((used)) static int patch_yamaha_ymf743(struct snd_ac97 *ac97)
{
 ac97->build_ops = &patch_yamaha_ymf743_ops;
 ac97->caps |= AC97_BC_BASS_TREBLE;
 ac97->caps |= 0x04 << 10;
 ac97->rates[AC97_RATES_SPDIF] = SNDRV_PCM_RATE_48000;
 ac97->ext_id |= AC97_EI_SPDIF;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct aaci* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; } ;
struct aaci {int ac97; } ;


 int AC97_EXTENDED_STATUS ;
 int AC97_PCM_LR_ADC_RATE ;
 int AC97_PCM_MIC_ADC_RATE ;
 int AC97_REC_SEL ;
 int aaci_ac97_write (int ,int ,int) ;
 int aaci_pcm_prepare (struct snd_pcm_substream*) ;

__attribute__((used)) static int aaci_pcm_capture_prepare(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct aaci *aaci = substream->private_data;

 aaci_pcm_prepare(substream);


 aaci_ac97_write(aaci->ac97, AC97_EXTENDED_STATUS, 0x0001);
 aaci_ac97_write(aaci->ac97, AC97_PCM_LR_ADC_RATE, runtime->rate);
 aaci_ac97_write(aaci->ac97, AC97_PCM_MIC_ADC_RATE, runtime->rate);


 aaci_ac97_write(aaci->ac97, AC97_REC_SEL, 0x0404);

 return 0;
}

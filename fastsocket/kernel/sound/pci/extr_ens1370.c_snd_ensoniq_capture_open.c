
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;
struct ensoniq {struct snd_pcm_substream* capture_substream; int mode; } ;


 int ES_MODE_CAPTURE ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int snd_ensoniq_capture ;
 int snd_es1370_hw_constraints_clock ;
 int snd_es1371_hw_constraints_adc_clock ;
 int snd_pcm_hw_constraint_ratnums (struct snd_pcm_runtime*,int ,int ,int *) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;
 struct ensoniq* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ensoniq_capture_open(struct snd_pcm_substream *substream)
{
 struct ensoniq *ensoniq = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 ensoniq->mode |= ES_MODE_CAPTURE;
 ensoniq->capture_substream = substream;
 runtime->hw = snd_ensoniq_capture;
 snd_pcm_set_sync(substream);




 snd_pcm_hw_constraint_ratnums(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
          &snd_es1371_hw_constraints_adc_clock);

 return 0;
}

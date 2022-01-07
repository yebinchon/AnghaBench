
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {struct snd_pcm_substream* capture_substream; int mode; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int SV_MODE_CAPTURE ;
 int snd_pcm_hw_constraint_ratdens (struct snd_pcm_runtime*,int ,int ,int *) ;
 struct sonicvibes* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_sonicvibes_capture ;
 int snd_sonicvibes_hw_constraints_adc_clock ;

__attribute__((used)) static int snd_sonicvibes_capture_open(struct snd_pcm_substream *substream)
{
 struct sonicvibes *sonic = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 sonic->mode |= SV_MODE_CAPTURE;
 sonic->capture_substream = substream;
 runtime->hw = snd_sonicvibes_capture;
 snd_pcm_hw_constraint_ratdens(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
          &snd_sonicvibes_hw_constraints_adc_clock);
 return 0;
}

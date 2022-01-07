
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int mode; int capture_format; struct snd_pcm_substream* capture_substream; int playback_format; struct snd_pcm_substream* playback_substream; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SB_DSP_INPUT ;
 int SB_DSP_OUTPUT ;


 int SNDRV_PCM_TRIGGER_START ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 int snd_sb8_capture_trigger (struct snd_pcm_substream*,int ) ;
 int snd_sb8_playback_trigger (struct snd_pcm_substream*,int ) ;
 int snd_sb_ack_8bit (struct snd_sb*) ;

irqreturn_t snd_sb8dsp_interrupt(struct snd_sb *chip)
{
 struct snd_pcm_substream *substream;
 struct snd_pcm_runtime *runtime;

 snd_sb_ack_8bit(chip);
 switch (chip->mode) {
 case 128:
  substream = chip->playback_substream;
  runtime = substream->runtime;
  if (chip->playback_format == SB_DSP_OUTPUT)
       snd_sb8_playback_trigger(substream, SNDRV_PCM_TRIGGER_START);
  snd_pcm_period_elapsed(substream);
  break;
 case 129:
  substream = chip->capture_substream;
  runtime = substream->runtime;
  if (chip->capture_format == SB_DSP_INPUT)
       snd_sb8_capture_trigger(substream, SNDRV_PCM_TRIGGER_START);
  snd_pcm_period_elapsed(substream);
  break;
 }
 return IRQ_HANDLED;
}

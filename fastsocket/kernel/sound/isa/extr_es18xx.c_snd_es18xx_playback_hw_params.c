
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ number; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_es18xx {int caps; int dma2_shift; int dma1_shift; scalar_t__ capture_a_substream; } ;


 int EBUSY ;
 int ES18XX_DUPLEX_MONO ;
 int ES18XX_PCM2 ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int _snd_pcm_hw_param_setempty (struct snd_pcm_hw_params*,int ) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int snd_pcm_format_width (int ) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct snd_es18xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_es18xx_playback_hw_params(struct snd_pcm_substream *substream,
      struct snd_pcm_hw_params *hw_params)
{
 struct snd_es18xx *chip = snd_pcm_substream_chip(substream);
 int shift, err;

 shift = 0;
 if (params_channels(hw_params) == 2)
  shift++;
 if (snd_pcm_format_width(params_format(hw_params)) == 16)
  shift++;

 if (substream->number == 0 && (chip->caps & ES18XX_PCM2)) {
  if ((chip->caps & ES18XX_DUPLEX_MONO) &&
      (chip->capture_a_substream) &&
      params_channels(hw_params) != 1) {
   _snd_pcm_hw_param_setempty(hw_params, SNDRV_PCM_HW_PARAM_CHANNELS);
   return -EBUSY;
  }
  chip->dma2_shift = shift;
 } else {
  chip->dma1_shift = shift;
 }
 if ((err = snd_pcm_lib_malloc_pages(substream, params_buffer_bytes(hw_params))) < 0)
  return err;
 return 0;
}

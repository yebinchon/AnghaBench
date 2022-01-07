
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sport_device {int rx_dma_buf; int tx_dma_buf; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int periods; int dma_area; struct sport_device* private_data; } ;
struct ac97_frame {int dummy; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int bf5xx_dma_irq ;
 int sport_config_rx_dma (struct sport_device*,int ,int ,int) ;
 int sport_config_tx_dma (struct sport_device*,int ,int ,int) ;
 int sport_set_rx_callback (struct sport_device*,int ,struct snd_pcm_substream*) ;
 int sport_set_tx_callback (struct sport_device*,int ,struct snd_pcm_substream*) ;

__attribute__((used)) static int bf5xx_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct sport_device *sport = runtime->private_data;
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  sport_set_tx_callback(sport, bf5xx_dma_irq, substream);
  sport_config_tx_dma(sport, runtime->dma_area, runtime->periods,
   runtime->period_size * sizeof(struct ac97_frame));
 } else {
  sport_set_rx_callback(sport, bf5xx_dma_irq, substream);
  sport_config_rx_dma(sport, runtime->dma_area, runtime->periods,
   runtime->period_size * sizeof(struct ac97_frame));
 }

 return 0;
}

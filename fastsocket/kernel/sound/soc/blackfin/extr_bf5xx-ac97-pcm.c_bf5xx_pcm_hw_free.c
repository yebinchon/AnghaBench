
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sport_device {scalar_t__ rx_dma_buf; scalar_t__ tx_dma_buf; scalar_t__ once; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int buffer_size; scalar_t__ dma_area; struct sport_device* private_data; } ;
struct ac97_frame {int dummy; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int memset (scalar_t__,int ,int) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;

__attribute__((used)) static int bf5xx_pcm_hw_free(struct snd_pcm_substream *substream)
{
 snd_pcm_lib_free_pages(substream);
 return 0;
}

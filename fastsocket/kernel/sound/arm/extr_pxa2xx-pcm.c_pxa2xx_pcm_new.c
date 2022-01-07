
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {int private_free; struct pxa2xx_pcm_client* private_data; } ;
struct snd_card {TYPE_1__* dev; } ;
struct pxa2xx_pcm_client {scalar_t__ capture_params; scalar_t__ playback_params; } ;
struct TYPE_2__ {int coherent_dma_mask; int * dma_mask; } ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int pxa2xx_pcm_dmamask ;
 int pxa2xx_pcm_free_dma_buffers ;
 int pxa2xx_pcm_ops ;
 int pxa2xx_pcm_preallocate_dma_buffer (struct snd_pcm*,int) ;
 int snd_pcm_new (struct snd_card*,char*,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int,int *) ;

int pxa2xx_pcm_new(struct snd_card *card, struct pxa2xx_pcm_client *client,
     struct snd_pcm **rpcm)
{
 struct snd_pcm *pcm;
 int play = client->playback_params ? 1 : 0;
 int capt = client->capture_params ? 1 : 0;
 int ret;

 ret = snd_pcm_new(card, "PXA2xx-PCM", 0, play, capt, &pcm);
 if (ret)
  goto out;

 pcm->private_data = client;
 pcm->private_free = pxa2xx_pcm_free_dma_buffers;

 if (!card->dev->dma_mask)
  card->dev->dma_mask = &pxa2xx_pcm_dmamask;
 if (!card->dev->coherent_dma_mask)
  card->dev->coherent_dma_mask = 0xffffffff;

 if (play) {
  int stream = SNDRV_PCM_STREAM_PLAYBACK;
  snd_pcm_set_ops(pcm, stream, &pxa2xx_pcm_ops);
  ret = pxa2xx_pcm_preallocate_dma_buffer(pcm, stream);
  if (ret)
   goto out;
 }
 if (capt) {
  int stream = SNDRV_PCM_STREAM_CAPTURE;
  snd_pcm_set_ops(pcm, stream, &pxa2xx_pcm_ops);
  ret = pxa2xx_pcm_preallocate_dma_buffer(pcm, stream);
  if (ret)
   goto out;
 }

 if (rpcm)
  *rpcm = pcm;
 ret = 0;

 out:
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* socdev; } ;
struct TYPE_6__ {scalar_t__ addr; int * area; } ;
struct snd_pcm_substream {TYPE_3__ dma_buffer; } ;
struct snd_pcm {TYPE_2__* streams; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_5__ {struct snd_pcm_substream* substream; } ;
struct TYPE_4__ {int dev; } ;


 int dev_dbg (int ,char*,struct snd_pcm*) ;
 int snd_dma_free_pages (TYPE_3__*) ;

__attribute__((used)) static void psc_dma_free(struct snd_pcm *pcm)
{
 struct snd_soc_pcm_runtime *rtd = pcm->private_data;
 struct snd_pcm_substream *substream;
 int stream;

 dev_dbg(rtd->socdev->dev, "psc_dma_free(pcm=%p)\n", pcm);

 for (stream = 0; stream < 2; stream++) {
  substream = pcm->streams[stream].substream;
  if (substream) {
   snd_dma_free_pages(&substream->dma_buffer);
   substream->dma_buffer.area = ((void*)0);
   substream->dma_buffer.addr = 0;
  }
 }
}

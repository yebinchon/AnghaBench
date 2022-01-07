
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; struct pxa2xx_pcm_client* private_data; } ;
struct pxa2xx_runtime_data {int dma_ch; } ;
struct pxa2xx_pcm_client {int (* shutdown ) (struct snd_pcm_substream*) ;} ;
struct TYPE_2__ {struct pxa2xx_runtime_data* private_data; } ;


 int __pxa2xx_pcm_close (struct snd_pcm_substream*) ;
 int pxa_free_dma (int ) ;
 int stub1 (struct snd_pcm_substream*) ;

__attribute__((used)) static int pxa2xx_pcm_close(struct snd_pcm_substream *substream)
{
 struct pxa2xx_pcm_client *client = substream->private_data;
 struct pxa2xx_runtime_data *rtd = substream->runtime->private_data;

 pxa_free_dma(rtd->dma_ch);
 client->shutdown(substream);

 return __pxa2xx_pcm_close(substream);
}

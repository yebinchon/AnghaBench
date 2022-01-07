
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dma_buffer; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int snd_pcm_set_runtime_buffer (struct snd_pcm_substream*,int *) ;

__attribute__((used)) static int
psc_dma_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params)
{
 snd_pcm_set_runtime_buffer(substream, &substream->dma_buffer);

 return 0;
}

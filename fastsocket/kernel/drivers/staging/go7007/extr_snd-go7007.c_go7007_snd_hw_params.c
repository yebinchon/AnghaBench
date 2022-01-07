
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct go7007 {int audio_deliver; } ;
struct TYPE_2__ {unsigned int dma_bytes; int * dma_area; } ;


 int ENOMEM ;
 unsigned int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int parse_audio_stream_data ;
 struct go7007* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int vfree (int *) ;
 int * vmalloc (unsigned int) ;

__attribute__((used)) static int go7007_snd_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *hw_params)
{
 struct go7007 *go = snd_pcm_substream_chip(substream);
 unsigned int bytes;

 bytes = params_buffer_bytes(hw_params);
 if (substream->runtime->dma_bytes > 0)
  vfree(substream->runtime->dma_area);
 substream->runtime->dma_bytes = 0;
 substream->runtime->dma_area = vmalloc(bytes);
 if (substream->runtime->dma_area == ((void*)0))
  return -ENOMEM;
 substream->runtime->dma_bytes = bytes;
 go->audio_deliver = parse_audio_stream_data;
 return 0;
}

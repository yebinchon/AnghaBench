
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct gus_pcm_private* private_data; } ;
struct gus_pcm_private {int dma_size; int block_size; int blocks; scalar_t__ bpos; } ;


 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_gf1_pcm_playback_prepare(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct gus_pcm_private *pcmp = runtime->private_data;

 pcmp->bpos = 0;
 pcmp->dma_size = snd_pcm_lib_buffer_bytes(substream);
 pcmp->block_size = snd_pcm_lib_period_bytes(substream);
 pcmp->blocks = pcmp->dma_size / pcmp->block_size;
 return 0;
}

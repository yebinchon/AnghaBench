
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_gus_card {int * pcm_cap_substream; } ;


 int SNDRV_GF1_HANDLER_DMA_READ ;
 int snd_gf1_set_default_handlers (struct snd_gus_card*,int ) ;
 struct snd_gus_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_gf1_pcm_capture_close(struct snd_pcm_substream *substream)
{
 struct snd_gus_card *gus = snd_pcm_substream_chip(substream);

 gus->pcm_cap_substream = ((void*)0);
 snd_gf1_set_default_handlers(gus, SNDRV_GF1_HANDLER_DMA_READ);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ dma_area; struct snd_cs46xx_pcm* private_data; } ;
struct snd_pcm_indirect {scalar_t__ sw_data; scalar_t__ hw_data; } ;
struct TYPE_2__ {scalar_t__ area; } ;
struct snd_cs46xx_pcm {TYPE_1__ hw_buf; } ;


 int memcpy (scalar_t__,scalar_t__,size_t) ;

__attribute__((used)) static void snd_cs46xx_pb_trans_copy(struct snd_pcm_substream *substream,
         struct snd_pcm_indirect *rec, size_t bytes)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_cs46xx_pcm * cpcm = runtime->private_data;
 memcpy(cpcm->hw_buf.area + rec->hw_data, runtime->dma_area + rec->sw_data, bytes);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_4__ {int period_bytes_max; int buffer_bytes_max; } ;
struct snd_pcm_runtime {TYPE_2__ hw; } ;
struct TYPE_3__ {int dma2; int interrupt_handler_dma_read; } ;
struct snd_gus_card {TYPE_1__ gf1; struct snd_pcm_substream* pcm_cap_substream; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int hw_constraints_clocks ;
 TYPE_2__ snd_gf1_pcm_capture ;
 int snd_gf1_pcm_interrupt_dma_read ;
 int snd_pcm_hw_constraint_ratnums (struct snd_pcm_runtime*,int ,int ,int *) ;
 int snd_pcm_limit_isa_dma_size (int ,int *) ;
 struct snd_gus_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_gf1_pcm_capture_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_gus_card *gus = snd_pcm_substream_chip(substream);

 gus->gf1.interrupt_handler_dma_read = snd_gf1_pcm_interrupt_dma_read;
 gus->pcm_cap_substream = substream;
 substream->runtime->hw = snd_gf1_pcm_capture;
 snd_pcm_limit_isa_dma_size(gus->gf1.dma2, &runtime->hw.buffer_bytes_max);
 snd_pcm_limit_isa_dma_size(gus->gf1.dma2, &runtime->hw.period_bytes_max);
 snd_pcm_hw_constraint_ratnums(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
          &hw_constraints_clocks);
 return 0;
}

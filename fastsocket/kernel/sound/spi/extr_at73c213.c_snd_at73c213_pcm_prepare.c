
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {long period_size; long channels; scalar_t__ dma_addr; } ;
struct snd_at73c213 {TYPE_1__* ssc; scalar_t__ period; } ;
struct TYPE_2__ {int regs; } ;


 int PDC_TCR ;
 int PDC_TNCR ;
 int PDC_TNPR ;
 int PDC_TPR ;
 int frames_to_bytes (struct snd_pcm_runtime*,long) ;
 struct snd_at73c213* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int ssc_writel (int ,int ,long) ;

__attribute__((used)) static int snd_at73c213_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct snd_at73c213 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 int block_size;

 block_size = frames_to_bytes(runtime, runtime->period_size);

 chip->period = 0;

 ssc_writel(chip->ssc->regs, PDC_TPR,
   (long)runtime->dma_addr);
 ssc_writel(chip->ssc->regs, PDC_TCR,
   runtime->period_size * runtime->channels);
 ssc_writel(chip->ssc->regs, PDC_TNPR,
   (long)runtime->dma_addr + block_size);
 ssc_writel(chip->ssc->regs, PDC_TNCR,
   runtime->period_size * runtime->channels);

 return 0;
}

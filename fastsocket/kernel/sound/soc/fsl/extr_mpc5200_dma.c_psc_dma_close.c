
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm_substream {TYPE_3__* pstr; struct snd_soc_pcm_runtime* private_data; } ;
struct psc_dma_stream {int * stream; int active; } ;
struct psc_dma {TYPE_5__* psc_regs; int imr; struct psc_dma_stream capture; struct psc_dma_stream playback; int dev; } ;
struct TYPE_9__ {int imr; } ;
struct TYPE_10__ {int command; TYPE_4__ isr_imr; } ;
struct TYPE_8__ {scalar_t__ stream; } ;
struct TYPE_7__ {TYPE_1__* cpu_dai; } ;
struct TYPE_6__ {struct psc_dma* private_data; } ;


 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int dev_dbg (int ,char*,struct snd_pcm_substream*) ;
 int out_8 (int *,int) ;
 int out_be16 (int *,int ) ;

__attribute__((used)) static int psc_dma_close(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct psc_dma *psc_dma = rtd->dai->cpu_dai->private_data;
 struct psc_dma_stream *s;

 dev_dbg(psc_dma->dev, "psc_dma_close(substream=%p)\n", substream);

 if (substream->pstr->stream == SNDRV_PCM_STREAM_CAPTURE)
  s = &psc_dma->capture;
 else
  s = &psc_dma->playback;

 if (!psc_dma->playback.active &&
     !psc_dma->capture.active) {


  out_be16(&psc_dma->psc_regs->isr_imr.imr, psc_dma->imr);
  out_8(&psc_dma->psc_regs->command, 4 << 4);
 }
 s->stream = ((void*)0);
 return 0;
}

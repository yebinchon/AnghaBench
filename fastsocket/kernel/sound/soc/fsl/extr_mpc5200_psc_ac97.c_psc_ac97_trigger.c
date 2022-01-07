
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_3__* dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {TYPE_4__* pstr; struct snd_soc_pcm_runtime* private_data; } ;
struct psc_dma {int slots; TYPE_1__* psc_regs; } ;
struct TYPE_8__ {int stream; } ;
struct TYPE_7__ {TYPE_2__* cpu_dai; } ;
struct TYPE_6__ {struct psc_dma* private_data; } ;
struct TYPE_5__ {int ac97_slots; } ;


 int SNDRV_PCM_STREAM_CAPTURE ;

 int out_be32 (int *,int) ;

__attribute__((used)) static int psc_ac97_trigger(struct snd_pcm_substream *substream, int cmd,
       struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct psc_dma *psc_dma = rtd->dai->cpu_dai->private_data;

 switch (cmd) {
 case 128:
  if (substream->pstr->stream == SNDRV_PCM_STREAM_CAPTURE)
   psc_dma->slots &= 0xFFFF0000;
  else
   psc_dma->slots &= 0x0000FFFF;

  out_be32(&psc_dma->psc_regs->ac97_slots, psc_dma->slots);
  break;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atiixp_modem {int dummy; } ;
struct atiixp_dma {int substream; TYPE_1__* ops; int running; } ;
struct TYPE_2__ {int type; } ;


 int SNDRV_PCM_STATE_XRUN ;
 int snd_pcm_stop (int ,int ) ;
 int snd_printdd (char*,int ) ;

__attribute__((used)) static void snd_atiixp_xrun_dma(struct atiixp_modem *chip,
    struct atiixp_dma *dma)
{
 if (! dma->substream || ! dma->running)
  return;
 snd_printdd("atiixp-modem: XRUN detected (DMA %d)\n", dma->ops->type);
 snd_pcm_stop(dma->substream, SNDRV_PCM_STATE_XRUN);
}

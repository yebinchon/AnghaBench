
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct atmel_ssc_info {int dir_mask; int lock; scalar_t__ rcmr_period; scalar_t__ tcmr_period; scalar_t__ cmr_div; TYPE_4__* ssc; scalar_t__ initialized; struct atmel_pcm_dma_params** dma_params; } ;
struct atmel_pcm_dma_params {int * substream; int * ssc; TYPE_3__* mask; } ;
struct TYPE_8__ {int regs; int irq; int clk; } ;
struct TYPE_7__ {int ssc_disable; } ;
struct TYPE_6__ {TYPE_1__* cpu_dai; } ;
struct TYPE_5__ {size_t id; } ;


 int CR ;
 int CR_SWRST ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SR ;
 int SSC_BIT (int ) ;
 int clk_disable (int ) ;
 int free_irq (int ,struct atmel_ssc_info*) ;
 int pr_debug (char*,...) ;
 struct snd_soc_pcm_runtime* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct atmel_ssc_info* ssc_info ;
 int ssc_readl (int ,int ) ;
 int ssc_writel (int ,int ,int ) ;

__attribute__((used)) static void atmel_ssc_shutdown(struct snd_pcm_substream *substream,
          struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = snd_pcm_substream_chip(substream);
 struct atmel_ssc_info *ssc_p = &ssc_info[rtd->dai->cpu_dai->id];
 struct atmel_pcm_dma_params *dma_params;
 int dir, dir_mask;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  dir = 0;
 else
  dir = 1;

 dma_params = ssc_p->dma_params[dir];

 if (dma_params != ((void*)0)) {
  ssc_writel(ssc_p->ssc->regs, CR, dma_params->mask->ssc_disable);
  pr_debug("atmel_ssc_shutdown: %s disabled SSC_SR=0x%08x\n",
   (dir ? "receive" : "transmit"),
   ssc_readl(ssc_p->ssc->regs, SR));

  dma_params->ssc = ((void*)0);
  dma_params->substream = ((void*)0);
  ssc_p->dma_params[dir] = ((void*)0);
 }

 dir_mask = 1 << dir;

 spin_lock_irq(&ssc_p->lock);
 ssc_p->dir_mask &= ~dir_mask;
 if (!ssc_p->dir_mask) {
  if (ssc_p->initialized) {

   pr_debug("atmel_ssc_dau: Stopping clock\n");
   clk_disable(ssc_p->ssc->clk);

   free_irq(ssc_p->ssc->irq, ssc_p);
   ssc_p->initialized = 0;
  }


  ssc_writel(ssc_p->ssc->regs, CR, SSC_BIT(CR_SWRST));

  ssc_p->cmr_div = ssc_p->tcmr_period = ssc_p->rcmr_period = 0;
 }
 spin_unlock_irq(&ssc_p->lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct atmel_ssc_info {struct atmel_pcm_dma_params** dma_params; TYPE_1__* ssc; } ;
struct atmel_pcm_dma_params {int substream; int (* dma_intr_handler ) (int,int ) ;TYPE_2__* mask; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int ssc_endx; int ssc_endbuf; } ;
struct TYPE_3__ {int regs; } ;


 int ARRAY_SIZE (struct atmel_pcm_dma_params**) ;
 int IMR ;
 int IRQ_HANDLED ;
 int SR ;
 scalar_t__ ssc_readl (int ,int ) ;
 int stub1 (int,int ) ;

__attribute__((used)) static irqreturn_t atmel_ssc_interrupt(int irq, void *dev_id)
{
 struct atmel_ssc_info *ssc_p = dev_id;
 struct atmel_pcm_dma_params *dma_params;
 u32 ssc_sr;
 u32 ssc_substream_mask;
 int i;

 ssc_sr = (unsigned long)ssc_readl(ssc_p->ssc->regs, SR)
   & (unsigned long)ssc_readl(ssc_p->ssc->regs, IMR);







 for (i = 0; i < ARRAY_SIZE(ssc_p->dma_params); i++) {
  dma_params = ssc_p->dma_params[i];

  if ((dma_params != ((void*)0)) &&
   (dma_params->dma_intr_handler != ((void*)0))) {
   ssc_substream_mask = (dma_params->mask->ssc_endx |
     dma_params->mask->ssc_endbuf);
   if (ssc_sr & ssc_substream_mask) {
    dma_params->dma_intr_handler(ssc_sr,
      dma_params->
      substream);
   }
  }
 }

 return IRQ_HANDLED;
}

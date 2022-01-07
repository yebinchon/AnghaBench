
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct edmacc_param {int opt; int link_bcntrld; } ;
struct davinci_runtime_data {int master_lch; int slave_lch; TYPE_2__* params; } ;
struct TYPE_4__ {int channel; } ;
struct TYPE_3__ {struct davinci_runtime_data* private_data; } ;


 int EDMA_CHAN_SLOT (int) ;
 int EDMA_CTLR (int) ;
 int EDMA_SLOT_ANY ;
 int EDMA_TCC (int) ;
 int EVENTQ_0 ;
 int TCINTEN ;
 int davinci_pcm_dma_irq ;
 int edma_alloc_channel (int ,int ,struct snd_pcm_substream*,int ) ;
 int edma_alloc_slot (int ,int ) ;
 int edma_free_channel (int) ;
 int edma_read_slot (int,struct edmacc_param*) ;
 int edma_write_slot (int,struct edmacc_param*) ;

__attribute__((used)) static int davinci_pcm_dma_request(struct snd_pcm_substream *substream)
{
 struct davinci_runtime_data *prtd = substream->runtime->private_data;
 struct edmacc_param p_ram;
 int ret;


 ret = edma_alloc_channel(prtd->params->channel,
      davinci_pcm_dma_irq, substream,
      EVENTQ_0);
 if (ret < 0)
  return ret;
 prtd->master_lch = ret;


 ret = edma_alloc_slot(EDMA_CTLR(prtd->master_lch), EDMA_SLOT_ANY);
 if (ret < 0) {
  edma_free_channel(prtd->master_lch);
  return ret;
 }
 prtd->slave_lch = ret;
 edma_read_slot(prtd->slave_lch, &p_ram);
 p_ram.opt |= TCINTEN | EDMA_TCC(EDMA_CHAN_SLOT(prtd->master_lch));
 p_ram.link_bcntrld = EDMA_CHAN_SLOT(prtd->slave_lch) << 5;
 edma_write_slot(prtd->slave_lch, &p_ram);

 return 0;
}

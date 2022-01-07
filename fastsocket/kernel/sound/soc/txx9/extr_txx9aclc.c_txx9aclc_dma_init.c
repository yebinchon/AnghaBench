
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct txx9dmac_slave {int reg_width; scalar_t__ rx_reg; scalar_t__ tx_reg; } ;
struct TYPE_2__ {int dev; } ;
struct txx9aclc_soc_device {TYPE_1__ soc_dev; } ;
struct txx9aclc_plat_drvdata {scalar_t__ physbase; } ;
struct txx9aclc_dmadata {scalar_t__ stream; int tasklet; int dma_chan; int dma_lock; struct txx9dmac_slave dma_slave; } ;
typedef int dma_cap_mask_t ;


 scalar_t__ ACAUDIDAT ;
 scalar_t__ ACAUDODAT ;
 int DMA_SLAVE ;
 int EBUSY ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_err (int ,char*,char*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_request_channel (int ,int ,struct txx9aclc_dmadata*) ;
 int filter ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int txx9aclc_dma_tasklet ;
 struct txx9aclc_plat_drvdata* txx9aclc_get_plat_drvdata (struct txx9aclc_soc_device*) ;

__attribute__((used)) static int txx9aclc_dma_init(struct txx9aclc_soc_device *dev,
        struct txx9aclc_dmadata *dmadata)
{
 struct txx9aclc_plat_drvdata *drvdata = txx9aclc_get_plat_drvdata(dev);
 struct txx9dmac_slave *ds = &dmadata->dma_slave;
 dma_cap_mask_t mask;

 spin_lock_init(&dmadata->dma_lock);

 ds->reg_width = sizeof(u32);
 if (dmadata->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  ds->tx_reg = drvdata->physbase + ACAUDODAT;
  ds->rx_reg = 0;
 } else {
  ds->tx_reg = 0;
  ds->rx_reg = drvdata->physbase + ACAUDIDAT;
 }


 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);
 dmadata->dma_chan = dma_request_channel(mask, filter, dmadata);
 if (!dmadata->dma_chan) {
  dev_err(dev->soc_dev.dev,
   "DMA channel for %s is not available\n",
   dmadata->stream == SNDRV_PCM_STREAM_PLAYBACK ?
   "playback" : "capture");
  return -EBUSY;
 }
 tasklet_init(&dmadata->tasklet, txx9aclc_dma_tasklet,
       (unsigned long)dmadata);
 return 0;
}

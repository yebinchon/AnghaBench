
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct atiixp_dma_desc {unsigned int size; void* next; scalar_t__ status; void* addr; } ;
struct TYPE_6__ {scalar_t__ addr; int * area; } ;
struct atiixp_dma {unsigned int period_bytes; unsigned int periods; TYPE_2__* ops; TYPE_3__ desc_buf; } ;
struct atiixp {scalar_t__ remap_addr; int reg_lock; int pci; } ;
struct TYPE_5__ {scalar_t__ llp_offset; int (* enable_dma ) (struct atiixp*,int) ;} ;
struct TYPE_4__ {scalar_t__ dma_addr; } ;


 int ATI_DESC_LIST_SIZE ;
 unsigned int ATI_MAX_DESCRIPTORS ;
 int ATI_REG_LINKPTR_EN ;
 int ENOMEM ;
 int SNDRV_DMA_TYPE_DEV ;
 void* cpu_to_le32 (int) ;
 scalar_t__ snd_dma_alloc_pages (int ,int ,int ,TYPE_3__*) ;
 int snd_dma_pci_data (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct atiixp*,int) ;
 int stub2 (struct atiixp*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int atiixp_build_dma_packets(struct atiixp *chip, struct atiixp_dma *dma,
        struct snd_pcm_substream *substream,
        unsigned int periods,
        unsigned int period_bytes)
{
 unsigned int i;
 u32 addr, desc_addr;
 unsigned long flags;

 if (periods > ATI_MAX_DESCRIPTORS)
  return -ENOMEM;

 if (dma->desc_buf.area == ((void*)0)) {
  if (snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV,
     snd_dma_pci_data(chip->pci),
     ATI_DESC_LIST_SIZE,
     &dma->desc_buf) < 0)
   return -ENOMEM;
  dma->period_bytes = dma->periods = 0;
 }

 if (dma->periods == periods && dma->period_bytes == period_bytes)
  return 0;


 spin_lock_irqsave(&chip->reg_lock, flags);
 writel(0, chip->remap_addr + dma->ops->llp_offset);
 dma->ops->enable_dma(chip, 0);
 dma->ops->enable_dma(chip, 1);
 spin_unlock_irqrestore(&chip->reg_lock, flags);


 addr = (u32)substream->runtime->dma_addr;
 desc_addr = (u32)dma->desc_buf.addr;
 for (i = 0; i < periods; i++) {
  struct atiixp_dma_desc *desc;
  desc = &((struct atiixp_dma_desc *)dma->desc_buf.area)[i];
  desc->addr = cpu_to_le32(addr);
  desc->status = 0;
  desc->size = period_bytes >> 2;
  desc_addr += sizeof(struct atiixp_dma_desc);
  if (i == periods - 1)
   desc->next = cpu_to_le32((u32)dma->desc_buf.addr);
  else
   desc->next = cpu_to_le32(desc_addr);
  addr += period_bytes;
 }

 writel((u32)dma->desc_buf.addr | ATI_REG_LINKPTR_EN,
        chip->remap_addr + dma->ops->llp_offset);

 dma->period_bytes = period_bytes;
 dma->periods = periods;

 return 0;
}

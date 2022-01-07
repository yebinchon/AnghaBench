
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whcrc {int rc_len; int area; int rc_base; int cmd_dma_buf; int cmd_buf; int evt_dma_buf; int evt_buf; struct umc_dev* umc_dev; } ;
struct umc_dev {int irq; int dev; } ;


 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int free_irq (int ,struct whcrc*) ;
 int iounmap (int ) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static
void whcrc_release_rc_umc(struct whcrc *whcrc)
{
 struct umc_dev *umc_dev = whcrc->umc_dev;

 dma_free_coherent(&umc_dev->dev, PAGE_SIZE, whcrc->evt_buf,
     whcrc->evt_dma_buf);
 dma_free_coherent(&umc_dev->dev, PAGE_SIZE, whcrc->cmd_buf,
     whcrc->cmd_dma_buf);
 free_irq(umc_dev->irq, whcrc);
 iounmap(whcrc->rc_base);
 release_mem_region(whcrc->area, whcrc->rc_len);
}

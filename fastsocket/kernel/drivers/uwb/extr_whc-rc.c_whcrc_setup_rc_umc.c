
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct whcrc {scalar_t__ rc_len; scalar_t__ area; int * rc_base; int cmd_dma_buf; int * cmd_buf; int * evt_buf; int evt_dma_buf; struct umc_dev* umc_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;
struct umc_dev {int irq; struct device dev; TYPE_1__ resource; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int KBUILD_MODNAME ;
 int PAGE_SIZE ;
 int dev_err (struct device*,char*,...) ;
 void* dma_alloc_coherent (struct device*,int ,int *,int ) ;
 int dma_free_coherent (struct device*,int ,int *,int ) ;
 int free_irq (int ,struct whcrc*) ;
 int * ioremap_nocache (scalar_t__,scalar_t__) ;
 int iounmap (int *) ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 int request_irq (int ,int ,int ,int ,struct whcrc*) ;
 int * request_mem_region (scalar_t__,scalar_t__,int ) ;
 int whcrc_irq_cb ;

__attribute__((used)) static
int whcrc_setup_rc_umc(struct whcrc *whcrc)
{
 int result = 0;
 struct device *dev = &whcrc->umc_dev->dev;
 struct umc_dev *umc_dev = whcrc->umc_dev;

 whcrc->area = umc_dev->resource.start;
 whcrc->rc_len = umc_dev->resource.end - umc_dev->resource.start + 1;
 result = -EBUSY;
 if (request_mem_region(whcrc->area, whcrc->rc_len, KBUILD_MODNAME) == ((void*)0)) {
  dev_err(dev, "can't request URC region (%zu bytes @ 0x%lx): %d\n",
   whcrc->rc_len, whcrc->area, result);
  goto error_request_region;
 }

 whcrc->rc_base = ioremap_nocache(whcrc->area, whcrc->rc_len);
 if (whcrc->rc_base == ((void*)0)) {
  dev_err(dev, "can't ioremap registers (%zu bytes @ 0x%lx): %d\n",
   whcrc->rc_len, whcrc->area, result);
  goto error_ioremap_nocache;
 }

 result = request_irq(umc_dev->irq, whcrc_irq_cb, IRQF_SHARED,
        KBUILD_MODNAME, whcrc);
 if (result < 0) {
  dev_err(dev, "can't allocate IRQ %d: %d\n",
   umc_dev->irq, result);
  goto error_request_irq;
 }

 result = -ENOMEM;
 whcrc->cmd_buf = dma_alloc_coherent(&umc_dev->dev, PAGE_SIZE,
         &whcrc->cmd_dma_buf, GFP_KERNEL);
 if (whcrc->cmd_buf == ((void*)0)) {
  dev_err(dev, "Can't allocate cmd transfer buffer\n");
  goto error_cmd_buffer;
 }

 whcrc->evt_buf = dma_alloc_coherent(&umc_dev->dev, PAGE_SIZE,
         &whcrc->evt_dma_buf, GFP_KERNEL);
 if (whcrc->evt_buf == ((void*)0)) {
  dev_err(dev, "Can't allocate evt transfer buffer\n");
  goto error_evt_buffer;
 }
 return 0;

error_evt_buffer:
 dma_free_coherent(&umc_dev->dev, PAGE_SIZE, whcrc->cmd_buf,
     whcrc->cmd_dma_buf);
error_cmd_buffer:
 free_irq(umc_dev->irq, whcrc);
error_request_irq:
 iounmap(whcrc->rc_base);
error_ioremap_nocache:
 release_mem_region(whcrc->area, whcrc->rc_len);
error_request_region:
 return result;
}

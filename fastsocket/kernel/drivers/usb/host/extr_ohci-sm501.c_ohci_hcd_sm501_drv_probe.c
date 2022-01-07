
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {scalar_t__ rsrc_len; scalar_t__ rsrc_start; int * regs; } ;
struct resource {scalar_t__ start; scalar_t__ end; TYPE_1__* parent; } ;
struct device {int parent; } ;
struct platform_device {int name; struct device dev; } ;
struct hc_driver {int dummy; } ;
struct TYPE_2__ {scalar_t__ start; } ;


 int DMA_MEMORY_EXCLUSIVE ;
 int DMA_MEMORY_MAP ;
 int EBUSY ;
 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int IORESOURCE_MEM ;
 int IRQF_DISABLED ;
 int IRQF_SHARED ;
 int SM501_GATE_USB_HOST ;
 int SM501_IRQ_MASK ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int dma_declare_coherent_memory (struct device*,scalar_t__,scalar_t__,scalar_t__,int) ;
 int dma_release_declared_memory (struct device*) ;
 int hcd_to_ohci (struct usb_hcd*) ;
 int * ioremap (scalar_t__,scalar_t__) ;
 int ohci_hcd_init (int ) ;
 struct hc_driver ohci_sm501_hc_driver ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 int request_mem_region (scalar_t__,scalar_t__,int ) ;
 int sm501_modify_reg (int ,int ,int,int ) ;
 int sm501_unit_power (int ,int ,int) ;
 int usb_add_hcd (struct usb_hcd*,int,int) ;
 struct usb_hcd* usb_create_hcd (struct hc_driver const*,struct device*,int ) ;
 int usb_put_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ohci_hcd_sm501_drv_probe(struct platform_device *pdev)
{
 const struct hc_driver *driver = &ohci_sm501_hc_driver;
 struct device *dev = &pdev->dev;
 struct resource *res, *mem;
 int retval, irq;
 struct usb_hcd *hcd = ((void*)0);

 irq = retval = platform_get_irq(pdev, 0);
 if (retval < 0)
  goto err0;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 if (mem == ((void*)0)) {
  dev_err(dev, "no resource definition for memory\n");
  retval = -ENOENT;
  goto err0;
 }

 if (!request_mem_region(mem->start, mem->end - mem->start + 1,
    pdev->name)) {
  dev_err(dev, "request_mem_region failed\n");
  retval = -EBUSY;
  goto err0;
 }
 if (!dma_declare_coherent_memory(dev, mem->start,
      mem->start - mem->parent->start,
      (mem->end - mem->start) + 1,
      DMA_MEMORY_MAP |
      DMA_MEMORY_EXCLUSIVE)) {
  dev_err(dev, "cannot declare coherent memory\n");
  retval = -ENXIO;
  goto err1;
 }


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res == ((void*)0)) {
  dev_err(dev, "no resource definition for registers\n");
  retval = -ENOENT;
  goto err2;
 }

 hcd = usb_create_hcd(driver, &pdev->dev, dev_name(&pdev->dev));
 if (!hcd) {
  retval = -ENOMEM;
  goto err2;
 }

 hcd->rsrc_start = res->start;
 hcd->rsrc_len = res->end - res->start + 1;

 if (!request_mem_region(hcd->rsrc_start, hcd->rsrc_len, pdev->name)) {
  dev_err(dev, "request_mem_region failed\n");
  retval = -EBUSY;
  goto err3;
 }

 hcd->regs = ioremap(hcd->rsrc_start, hcd->rsrc_len);
 if (hcd->regs == ((void*)0)) {
  dev_err(dev, "cannot remap registers\n");
  retval = -ENXIO;
  goto err4;
 }

 ohci_hcd_init(hcd_to_ohci(hcd));

 retval = usb_add_hcd(hcd, irq, IRQF_DISABLED | IRQF_SHARED);
 if (retval)
  goto err4;



 sm501_unit_power(dev->parent, SM501_GATE_USB_HOST, 1);
 sm501_modify_reg(dev->parent, SM501_IRQ_MASK, 1 << 6, 0);

 return 0;
err4:
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
err3:
 usb_put_hcd(hcd);
err2:
 dma_release_declared_memory(dev);
err1:
 release_mem_region(mem->start, mem->end - mem->start + 1);
err0:
 return retval;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {scalar_t__ rsrc_len; scalar_t__ rsrc_start; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int IORESOURCE_MEM ;
 int SM501_GATE_USB_HOST ;
 int SM501_IRQ_MASK ;
 int dma_release_declared_memory (TYPE_1__*) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 int sm501_modify_reg (int ,int ,int ,int) ;
 int sm501_unit_power (int ,int ,int ) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ohci_hcd_sm501_drv_remove(struct platform_device *pdev)
{
 struct usb_hcd *hcd = platform_get_drvdata(pdev);
 struct resource *mem;

 usb_remove_hcd(hcd);
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
 usb_put_hcd(hcd);
 dma_release_declared_memory(&pdev->dev);
 mem = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 if (mem)
  release_mem_region(mem->start, mem->end - mem->start + 1);



 sm501_modify_reg(pdev->dev.parent, SM501_IRQ_MASK, 0, 1 << 6);
 sm501_unit_power(pdev->dev.parent, SM501_GATE_USB_HOST, 0);

 platform_set_drvdata(pdev, ((void*)0));
 return 0;
}

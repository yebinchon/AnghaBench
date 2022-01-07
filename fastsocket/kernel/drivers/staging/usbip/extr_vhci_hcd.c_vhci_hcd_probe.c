
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct TYPE_4__ {scalar_t__ dma_mask; } ;
struct platform_device {TYPE_1__ dev; int id; int name; } ;


 int EINVAL ;
 int ENOMEM ;
 int dev_info (TYPE_1__*,char*) ;
 int dev_name (TYPE_1__*) ;
 int * hcd_to_vhci (struct usb_hcd*) ;
 int * the_controller ;
 int usb_add_hcd (struct usb_hcd*,int ,int ) ;
 struct usb_hcd* usb_create_hcd (int *,TYPE_1__*,int ) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usbip_dbg_vhci_hc (char*,...) ;
 int usbip_uerr (char*,...) ;
 int usbip_uinfo (char*) ;
 int vhci_hc_driver ;

__attribute__((used)) static int vhci_hcd_probe(struct platform_device *pdev)
{
 struct usb_hcd *hcd;
 int ret;

 usbip_uinfo("proving...\n");

 usbip_dbg_vhci_hc("name %s id %d\n", pdev->name, pdev->id);


 if (pdev->dev.dma_mask) {
  dev_info(&pdev->dev, "vhci_hcd DMA not supported\n");
  return -EINVAL;
 }





 hcd = usb_create_hcd(&vhci_hc_driver, &pdev->dev, dev_name(&pdev->dev));
 if (!hcd) {
  usbip_uerr("create hcd failed\n");
  return -ENOMEM;
 }



 the_controller = hcd_to_vhci(hcd);





 ret = usb_add_hcd(hcd, 0, 0);
 if (ret != 0) {
  usbip_uerr("usb_add_hcd failed %d\n", ret);
  usb_put_hcd(hcd);
  the_controller = ((void*)0);
  return ret;
 }


 usbip_dbg_vhci_hc("bye\n");
 return 0;
}

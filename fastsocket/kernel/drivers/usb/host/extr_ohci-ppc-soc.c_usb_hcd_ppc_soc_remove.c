
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int rsrc_len; int rsrc_start; int regs; } ;
struct platform_device {int dummy; } ;


 int iounmap (int ) ;
 int pr_debug (char*) ;
 int release_mem_region (int ,int ) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static void usb_hcd_ppc_soc_remove(struct usb_hcd *hcd,
  struct platform_device *pdev)
{
 usb_remove_hcd(hcd);

 pr_debug("stopping PPC-SOC USB Controller\n");

 iounmap(hcd->regs);
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
 usb_put_hcd(hcd);
}

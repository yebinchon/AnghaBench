
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int rsrc_len; int rsrc_start; int regs; } ;
struct platform_device {int dev; } ;


 int at91_stop_hc (struct platform_device*) ;
 int clk_put (int *) ;
 scalar_t__ cpu_is_at91sam9261 () ;
 int dev_set_drvdata (int *,int *) ;
 int * fclk ;
 int * hclk ;
 int * iclk ;
 int iounmap (int ) ;
 int release_mem_region (int ,int ) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static void usb_hcd_at91_remove(struct usb_hcd *hcd,
    struct platform_device *pdev)
{
 usb_remove_hcd(hcd);
 at91_stop_hc(pdev);
 iounmap(hcd->regs);
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
 usb_put_hcd(hcd);

 if (cpu_is_at91sam9261())
  clk_put(hclk);
 clk_put(fclk);
 clk_put(iclk);
 fclk = iclk = hclk = ((void*)0);

 dev_set_drvdata(&pdev->dev, ((void*)0));
}

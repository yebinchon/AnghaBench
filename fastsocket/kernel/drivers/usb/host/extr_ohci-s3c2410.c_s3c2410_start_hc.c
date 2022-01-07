
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct s3c2410_hcd_info {int (* enable_oc ) (struct s3c2410_hcd_info*,int) ;int report_oc; struct usb_hcd* hcd; } ;
struct TYPE_2__ {struct s3c2410_hcd_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int clk ;
 int clk_enable (int ) ;
 int dev_dbg (TYPE_1__*,char*) ;
 int mdelay (int) ;
 int s3c2410_hcd_oc ;
 int stub1 (struct s3c2410_hcd_info*,int) ;
 int usb_clk ;

__attribute__((used)) static void s3c2410_start_hc(struct platform_device *dev, struct usb_hcd *hcd)
{
 struct s3c2410_hcd_info *info = dev->dev.platform_data;

 dev_dbg(&dev->dev, "s3c2410_start_hc:\n");

 clk_enable(usb_clk);
 mdelay(2);

 clk_enable(clk);

 if (info != ((void*)0)) {
  info->hcd = hcd;
  info->report_oc = s3c2410_hcd_oc;

  if (info->enable_oc != ((void*)0)) {
   (info->enable_oc)(info, 1);
  }
 }
}

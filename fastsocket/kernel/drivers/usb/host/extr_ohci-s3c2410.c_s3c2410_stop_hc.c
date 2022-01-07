
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c2410_hcd_info {int (* enable_oc ) (struct s3c2410_hcd_info*,int ) ;int * hcd; int * report_oc; } ;
struct TYPE_2__ {struct s3c2410_hcd_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int clk ;
 int clk_disable (int ) ;
 int dev_dbg (TYPE_1__*,char*) ;
 int stub1 (struct s3c2410_hcd_info*,int ) ;
 int usb_clk ;

__attribute__((used)) static void s3c2410_stop_hc(struct platform_device *dev)
{
 struct s3c2410_hcd_info *info = dev->dev.platform_data;

 dev_dbg(&dev->dev, "s3c2410_stop_hc:\n");

 if (info != ((void*)0)) {
  info->report_oc = ((void*)0);
  info->hcd = ((void*)0);

  if (info->enable_oc != ((void*)0)) {
   (info->enable_oc)(info, 0);
  }
 }

 clk_disable(clk);
 clk_disable(usb_clk);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct fsl_usb2_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct fsl_usb2_platform_data {scalar_t__ phy_mode; } ;


 scalar_t__ FSL_USB2_PHY_ULPI ;
 int clk_disable (int *) ;
 int clk_put (int *) ;
 int * mxc_usb_clk ;

void fsl_udc_clk_finalize(struct platform_device *pdev)
{
 struct fsl_usb2_platform_data *pdata = pdev->dev.platform_data;


 if (pdata->phy_mode == FSL_USB2_PHY_ULPI) {
  clk_disable(mxc_usb_clk);
  clk_put(mxc_usb_clk);
  mxc_usb_clk = ((void*)0);
 }
}

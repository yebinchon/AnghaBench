
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_disable (scalar_t__) ;
 int clk_put (scalar_t__) ;
 scalar_t__ mxc_ahb_clk ;
 scalar_t__ mxc_usb_clk ;

void fsl_udc_clk_release(void)
{
 if (mxc_usb_clk) {
  clk_disable(mxc_usb_clk);
  clk_put(mxc_usb_clk);
 }
 clk_disable(mxc_ahb_clk);
 clk_put(mxc_ahb_clk);
}

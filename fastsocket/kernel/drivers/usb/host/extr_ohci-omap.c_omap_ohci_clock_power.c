
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int udelay (int) ;
 int usb_dc_ck ;
 int usb_host_ck ;

__attribute__((used)) static void omap_ohci_clock_power(int on)
{
 if (on) {
  clk_enable(usb_dc_ck);
  clk_enable(usb_host_ck);

  udelay(100);
 } else {
  clk_disable(usb_host_ck);
  clk_disable(usb_dc_ck);
 }
}

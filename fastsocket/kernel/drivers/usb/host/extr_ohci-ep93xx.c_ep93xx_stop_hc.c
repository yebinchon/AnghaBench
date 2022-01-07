
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int clk_disable (int ) ;
 int usb_host_clock ;

__attribute__((used)) static void ep93xx_stop_hc(struct device *dev)
{
 clk_disable(usb_host_clock);
}

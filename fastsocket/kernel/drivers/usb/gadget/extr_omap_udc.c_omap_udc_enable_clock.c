
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dc_clk; int * hhc_clk; } ;


 int clk_disable (int *) ;
 int clk_enable (int *) ;
 TYPE_1__* udc ;
 int udelay (int) ;

__attribute__((used)) static void omap_udc_enable_clock(int enable)
{
 if (udc == ((void*)0) || udc->dc_clk == ((void*)0) || udc->hhc_clk == ((void*)0))
  return;

 if (enable) {
  clk_enable(udc->dc_clk);
  clk_enable(udc->hhc_clk);
  udelay(100);
 } else {
  clk_disable(udc->hhc_clk);
  clk_disable(udc->dc_clk);
 }
}

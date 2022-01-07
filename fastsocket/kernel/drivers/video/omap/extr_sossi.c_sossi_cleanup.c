
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; int fck; } ;


 int clk_put (int ) ;
 int iounmap (int ) ;
 int omap_lcdc_free_dma_callback () ;
 TYPE_1__ sossi ;

__attribute__((used)) static void sossi_cleanup(void)
{
 omap_lcdc_free_dma_callback();
 clk_put(sossi.fck);
 iounmap(sossi.base);
}

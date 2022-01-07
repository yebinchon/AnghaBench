
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lcdc_callback_data; int (* lcdc_callback ) (int ) ;int fck; } ;


 int clk_disable (int ) ;
 int omap_stop_lcd_dma () ;
 TYPE_1__ sossi ;
 int sossi_stop_transfer () ;
 int stub1 (int ) ;

__attribute__((used)) static void sossi_dma_callback(void *data)
{
 omap_stop_lcd_dma();
 sossi_stop_transfer();
 clk_disable(sossi.fck);
 sossi.lcdc_callback(sossi.lcdc_callback_data);
}

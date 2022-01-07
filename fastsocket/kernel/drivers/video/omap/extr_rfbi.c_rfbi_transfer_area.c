
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {void (* lcdc_callback ) (void*) ;int tearsync_mode; void* lcdc_callback_data; } ;


 int BUG_ON (int ) ;
 int RFBI_CONTROL ;
 int RFBI_PIXEL_CNT ;
 int omap_dispc_enable_lcd_out (int) ;
 int omap_dispc_set_lcd_size (int,int) ;
 TYPE_1__ rfbi ;
 int rfbi_enable_clocks (int) ;
 int rfbi_read_reg (int ) ;
 int rfbi_write_reg (int ,int) ;

__attribute__((used)) static void rfbi_transfer_area(int width, int height,
    void (callback)(void * data), void *data)
{
 u32 w;

 BUG_ON(callback == ((void*)0));

 rfbi_enable_clocks(1);
 omap_dispc_set_lcd_size(width, height);

 rfbi.lcdc_callback = callback;
 rfbi.lcdc_callback_data = data;

 rfbi_write_reg(RFBI_PIXEL_CNT, width * height);

 w = rfbi_read_reg(RFBI_CONTROL);
 w |= 1;
 if (!rfbi.tearsync_mode)
  w |= 1 << 4;
 rfbi_write_reg(RFBI_CONTROL, w);

 omap_dispc_enable_lcd_out(1);
}

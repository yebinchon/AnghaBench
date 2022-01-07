
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* lcdc_callback ) (void*) ;int bus_pick_width; int lock; int vsync_dma_pending; scalar_t__ tearsync_mode; int tearsync_line; int bus_pick_count; int fck; void* lcdc_callback_data; } ;


 int BUG_ON (int ) ;
 int SOSSI_INIT1_REG ;
 int WR_ACCESS ;
 int _set_bits_per_cycle (int ,int) ;
 int _set_tearsync_mode (scalar_t__,int ) ;
 int clk_enable (int ) ;
 int omap_enable_lcd_dma () ;
 int set_cycles (int) ;
 int set_timing (int ) ;
 TYPE_1__ sossi ;
 int sossi_set_bits (int ,int) ;
 int sossi_start_transfer () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sossi_transfer_area(int width, int height,
    void (callback)(void *data), void *data)
{
 BUG_ON(callback == ((void*)0));

 sossi.lcdc_callback = callback;
 sossi.lcdc_callback_data = data;

 clk_enable(sossi.fck);
 set_timing(WR_ACCESS);
 _set_bits_per_cycle(sossi.bus_pick_count, sossi.bus_pick_width);
 _set_tearsync_mode(sossi.tearsync_mode, sossi.tearsync_line);

 sossi_set_bits(SOSSI_INIT1_REG, 1 << 18);
 set_cycles(width * height * sossi.bus_pick_width / 8);

 sossi_start_transfer();
 if (sossi.tearsync_mode) {






  unsigned long flags;

  spin_lock_irqsave(&sossi.lock, flags);
  sossi.vsync_dma_pending++;
  spin_unlock_irqrestore(&sossi.lock, flags);
 } else

  omap_enable_lcd_dma();
}

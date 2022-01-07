
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int LCD_FIFO_UNDERFLOW ;
 int LCD_RASTER_CTRL_REG ;
 int LCD_RASTER_ENABLE ;
 int LCD_STAT_REG ;
 int LCD_SYNC_LOST ;
 int lcdc_read (int ) ;
 int lcdc_write (int,int ) ;

__attribute__((used)) static irqreturn_t lcdc_irq_handler(int irq, void *arg)
{
 u32 stat = lcdc_read(LCD_STAT_REG);
 u32 reg;

 if ((stat & LCD_SYNC_LOST) && (stat & LCD_FIFO_UNDERFLOW)) {
  reg = lcdc_read(LCD_RASTER_CTRL_REG);
  lcdc_write(reg & ~LCD_RASTER_ENABLE, LCD_RASTER_CTRL_REG);
  lcdc_write(stat, LCD_STAT_REG);
  lcdc_write(reg | LCD_RASTER_ENABLE, LCD_RASTER_CTRL_REG);
 } else
  lcdc_write(stat, LCD_STAT_REG);

 return IRQ_HANDLED;
}

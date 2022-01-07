
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int slave_virt_base; } ;


 scalar_t__ DUM_OUTP_FORMAT1 ;
 int V_LCD_DISPLAY_ON ;
 int V_LCD_STANDBY_OFF ;
 int V_LCD_SYNC_ENABLE ;
 int V_LCD_SYNC_FALL_H ;
 int V_LCD_SYNC_FALL_L ;
 int V_LCD_SYNC_RISE_H ;
 int V_LCD_SYNC_RISE_L ;
 int V_LCD_USE_9BIT_BUS ;
 TYPE_1__ dum_data ;
 int iowrite32 (int ,int ) ;
 int lcd_reset () ;
 int udelay (int) ;

__attribute__((used)) static void lcd_init(void)
{
 lcd_reset();

 DUM_OUTP_FORMAT1 = 0;

 udelay(1);
 iowrite32(V_LCD_STANDBY_OFF, dum_data.slave_virt_base);
 udelay(1);
 iowrite32(V_LCD_USE_9BIT_BUS, dum_data.slave_virt_base);
 udelay(1);
 iowrite32(V_LCD_SYNC_RISE_L, dum_data.slave_virt_base);
 udelay(1);
 iowrite32(V_LCD_SYNC_RISE_H, dum_data.slave_virt_base);
 udelay(1);
 iowrite32(V_LCD_SYNC_FALL_L, dum_data.slave_virt_base);
 udelay(1);
 iowrite32(V_LCD_SYNC_FALL_H, dum_data.slave_virt_base);
 udelay(1);
 iowrite32(V_LCD_SYNC_ENABLE, dum_data.slave_virt_base);
 udelay(1);
 iowrite32(V_LCD_DISPLAY_ON, dum_data.slave_virt_base);
 udelay(1);
}

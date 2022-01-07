
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bl; } ;


 scalar_t__ PIN_NONE ;
 TYPE_1__ bits ;
 scalar_t__ lcd_bl_pin ;
 int panel_set_bits () ;
 int pprt_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void lcd_backlight(int on)
{
 if (lcd_bl_pin == PIN_NONE)
  return;


 spin_lock(&pprt_lock);
 bits.bl = on;
 panel_set_bits();
 spin_unlock(&pprt_lock);
}

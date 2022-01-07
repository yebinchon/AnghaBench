
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lcd_send_serial (int) ;
 int pprt_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int) ;

__attribute__((used)) static void lcd_write_cmd_s(int cmd)
{
 spin_lock(&pprt_lock);
 lcd_send_serial(0x1F);
 lcd_send_serial(cmd & 0x0F);
 lcd_send_serial((cmd >> 4) & 0x0F);
 udelay(40);
 spin_unlock(&pprt_lock);
}

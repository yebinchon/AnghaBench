
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fb_info {int dummy; } ;


 int EBUSY ;
 int EINTR ;
 int LCD_BUSY ;
 int lcd_read_control (struct fb_info*) ;
 scalar_t__ msleep_interruptible (int) ;

__attribute__((used)) static int lcd_busy_wait(struct fb_info *info)
{
 u8 val = 0;
 int timeout = 10, retval = 0;

 do {
  val = lcd_read_control(info);
  val &= LCD_BUSY;
  if (val != LCD_BUSY)
   break;

  if (msleep_interruptible(1))
   return -EINTR;

  timeout--;
 } while (timeout);

 if (val == LCD_BUSY)
  retval = -EBUSY;

 return retval;
}

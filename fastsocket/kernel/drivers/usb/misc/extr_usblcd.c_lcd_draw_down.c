
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_lcd {int submitted; } ;


 int usb_kill_anchored_urbs (int *) ;
 int usb_wait_anchor_empty_timeout (int *,int) ;

__attribute__((used)) static void lcd_draw_down(struct usb_lcd *dev)
{
 int time;

 time = usb_wait_anchor_empty_timeout(&dev->submitted, 1000);
 if (!time)
  usb_kill_anchored_urbs(&dev->submitted);
}

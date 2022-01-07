
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6 {int usbdev; } ;
struct usb_line6_toneport {struct usb_line6 line6; } ;
struct usb_interface {int dummy; } ;
struct device {int dummy; } ;


 int led_green ;
 int led_red ;
 struct usb_interface* to_usb_interface (struct device*) ;
 int toneport_send_cmd (int ,int,int ) ;
 struct usb_line6_toneport* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void toneport_update_led(struct device *dev)
{
 struct usb_interface *interface = to_usb_interface(dev);
 struct usb_line6_toneport *tp = usb_get_intfdata(interface);
 struct usb_line6 *line6;

 if (!tp)
  return;

 line6 = &tp->line6;
 if (line6)
  toneport_send_cmd(line6->usbdev, (led_red << 8) | 0x0002,
      led_green);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_line6 {struct usb_device* usbdev; } ;
struct usb_line6_toneport {int firmware_version; int serial_number; struct usb_line6 line6; } ;
struct usb_interface {int dev; } ;
struct TYPE_2__ {scalar_t__ idProduct; } ;
struct usb_device {int dev; TYPE_1__ descriptor; } ;


 int CHECK_RETURN (int ) ;
 int ENODEV ;
 scalar_t__ LINE6_DEVID_GUITARPORT ;
 int dev_attr_led_green ;
 int dev_attr_led_red ;
 int device_create_file (int *,int *) ;
 scalar_t__ get_seconds () ;
 int line6_init_audio (struct usb_line6*) ;
 int line6_init_pcm (struct usb_line6*,int *) ;
 int line6_read_data (struct usb_line6*,int,int *,int) ;
 int line6_read_serial_number (struct usb_line6*,int *) ;
 int line6_register_audio (struct usb_line6*) ;
 int line6_write_data (struct usb_line6*,int,int*,int) ;
 int toneport_destruct (struct usb_interface*) ;
 int toneport_pcm_properties ;
 int toneport_send_cmd (struct usb_device*,int,int) ;
 int toneport_update_led (int *) ;

int toneport_init(struct usb_interface *interface,
    struct usb_line6_toneport *toneport)
{
 int err, ticks;
 struct usb_line6 *line6 = &toneport->line6;
 struct usb_device *usbdev;

 if ((interface == ((void*)0)) || (toneport == ((void*)0)))
  return -ENODEV;


 err = line6_init_audio(line6);
 if (err < 0) {
  toneport_destruct(interface);
  return err;
 }


 err = line6_init_pcm(line6, &toneport_pcm_properties);
 if (err < 0) {
  toneport_destruct(interface);
  return err;
 }


 err = line6_register_audio(line6);
 if (err < 0) {
  toneport_destruct(interface);
  return err;
 }

 usbdev = line6->usbdev;
 line6_read_serial_number(line6, &toneport->serial_number);
 line6_read_data(line6, 0x80c2, &toneport->firmware_version, 1);


 ticks = (int)get_seconds();
 line6_write_data(line6, 0x80c6, &ticks, 4);







 toneport_send_cmd(usbdev, 0x0301, 0x0000);

 if (usbdev->descriptor.idProduct != LINE6_DEVID_GUITARPORT) {
  CHECK_RETURN(device_create_file(&interface->dev, &dev_attr_led_red));
  CHECK_RETURN(device_create_file(&interface->dev, &dev_attr_led_green));
  toneport_update_led(&usbdev->dev);
 }

 return 0;
}

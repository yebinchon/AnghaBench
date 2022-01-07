
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct snd_line6_pcm* line6pcm; TYPE_2__* usbdev; } ;
struct usb_line6_toneport {TYPE_3__ line6; } ;
struct usb_interface {int dev; } ;
struct snd_line6_pcm {int dummy; } ;
struct TYPE_4__ {scalar_t__ idProduct; } ;
struct TYPE_5__ {TYPE_1__ descriptor; } ;


 scalar_t__ LINE6_DEVID_GUITARPORT ;
 int dev_attr_led_green ;
 int dev_attr_led_red ;
 int device_remove_file (int *,int *) ;
 int toneport_destruct (struct usb_interface*) ;
 int unlink_wait_clear_audio_in_urbs (struct snd_line6_pcm*) ;
 int unlink_wait_clear_audio_out_urbs (struct snd_line6_pcm*) ;
 struct usb_line6_toneport* usb_get_intfdata (struct usb_interface*) ;

void toneport_disconnect(struct usb_interface *interface)
{
 struct usb_line6_toneport *toneport;

 if (interface == ((void*)0))
  return;
 toneport = usb_get_intfdata(interface);

 if (toneport->line6.usbdev->descriptor.idProduct != LINE6_DEVID_GUITARPORT) {
  device_remove_file(&interface->dev, &dev_attr_led_red);
  device_remove_file(&interface->dev, &dev_attr_led_green);
 }

 if (toneport != ((void*)0)) {
  struct snd_line6_pcm *line6pcm = toneport->line6.line6pcm;

  if (line6pcm != ((void*)0)) {
   unlink_wait_clear_audio_out_urbs(line6pcm);
   unlink_wait_clear_audio_in_urbs(line6pcm);
  }
 }

 toneport_destruct(interface);
}

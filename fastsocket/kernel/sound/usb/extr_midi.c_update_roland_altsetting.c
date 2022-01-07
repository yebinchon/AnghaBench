
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface_descriptor {int bAlternateSetting; int bInterfaceNumber; } ;
struct usb_interface {struct usb_host_interface* altsetting; struct usb_host_interface* cur_altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct snd_usb_midi {int list; int dev; TYPE_1__* roland_load_ctl; struct usb_interface* iface; } ;
struct TYPE_2__ {int private_value; } ;


 struct usb_interface_descriptor* get_iface_desc (struct usb_host_interface*) ;
 int snd_usbmidi_input_start (int *) ;
 int snd_usbmidi_input_stop (int *) ;
 int usb_set_interface (int ,int ,int ) ;

__attribute__((used)) static void update_roland_altsetting(struct snd_usb_midi* umidi)
{
 struct usb_interface *intf;
 struct usb_host_interface *hostif;
 struct usb_interface_descriptor *intfd;
 int is_light_load;

 intf = umidi->iface;
 is_light_load = intf->cur_altsetting != intf->altsetting;
 if (umidi->roland_load_ctl->private_value == is_light_load)
  return;
 hostif = &intf->altsetting[umidi->roland_load_ctl->private_value];
 intfd = get_iface_desc(hostif);
 snd_usbmidi_input_stop(&umidi->list);
 usb_set_interface(umidi->dev, intfd->bInterfaceNumber,
     intfd->bAlternateSetting);
 snd_usbmidi_input_start(&umidi->list);
}

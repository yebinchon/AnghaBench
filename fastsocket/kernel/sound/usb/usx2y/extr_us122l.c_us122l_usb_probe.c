
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct snd_card {int dummy; } ;


 int EINVAL ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int snd_card_free (struct snd_card*) ;
 int snd_card_register (struct snd_card*) ;
 int snd_card_set_dev (struct snd_card*,int *) ;
 int us122l_create_card (struct snd_card*) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_get_intf (int ) ;
 int usb_ifnum_to_if (struct usb_device*,int ) ;
 int usx2y_create_card (struct usb_device*,struct snd_card**) ;

__attribute__((used)) static int us122l_usb_probe(struct usb_interface *intf,
       const struct usb_device_id *device_id,
       struct snd_card **cardp)
{
 struct usb_device *device = interface_to_usbdev(intf);
 struct snd_card *card;
 int err;

 err = usx2y_create_card(device, &card);
 if (err < 0)
  return err;

 snd_card_set_dev(card, &intf->dev);
 if (!us122l_create_card(card)) {
  snd_card_free(card);
  return -EINVAL;
 }

 err = snd_card_register(card);
 if (err < 0) {
  snd_card_free(card);
  return err;
 }

 usb_get_intf(usb_ifnum_to_if(device, 0));
 usb_get_dev(device);
 *cardp = card;
 return 0;
}

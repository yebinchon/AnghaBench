
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int ep0; } ;
struct snd_card {int dummy; } ;
struct gmidi_device {TYPE_1__* req; struct snd_card* card; } ;
struct TYPE_2__ {int length; } ;


 int DBG (struct gmidi_device*,char*) ;
 int USB_BUFSIZ ;
 int free_ep_req (int ,TYPE_1__*) ;
 struct gmidi_device* get_gadget_data (struct usb_gadget*) ;
 int kfree (struct gmidi_device*) ;
 int set_gadget_data (struct usb_gadget*,int *) ;
 int snd_card_free (struct snd_card*) ;

__attribute__((used)) static void gmidi_unbind(struct usb_gadget *gadget)
{
 struct gmidi_device *dev = get_gadget_data(gadget);
 struct snd_card *card;

 DBG(dev, "unbind\n");

 card = dev->card;
 dev->card = ((void*)0);
 if (card) {
  snd_card_free(card);
 }


 if (dev->req) {
  dev->req->length = USB_BUFSIZ;
  free_ep_req(gadget->ep0, dev->req);
 }
 kfree(dev);
 set_gadget_data(gadget, ((void*)0));
}

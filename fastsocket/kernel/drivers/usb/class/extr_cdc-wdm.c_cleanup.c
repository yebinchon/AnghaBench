
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wdm_device {struct wdm_device* ubuf; struct wdm_device* irq; struct wdm_device* orq; TYPE_1__* response; int inbuf; int wMaxCommand; int intf; TYPE_2__* validity; int sbuf; int wMaxPacketSize; } ;
struct TYPE_4__ {int transfer_dma; } ;
struct TYPE_3__ {int transfer_dma; } ;


 int free_urbs (struct wdm_device*) ;
 int interface_to_usbdev (int ) ;
 int kfree (struct wdm_device*) ;
 int usb_buffer_free (int ,int ,int ,int ) ;

__attribute__((used)) static void cleanup(struct wdm_device *desc)
{
 usb_buffer_free(interface_to_usbdev(desc->intf),
   desc->wMaxPacketSize,
   desc->sbuf,
   desc->validity->transfer_dma);
 usb_buffer_free(interface_to_usbdev(desc->intf),
   desc->wMaxCommand,
   desc->inbuf,
   desc->response->transfer_dma);
 kfree(desc->orq);
 kfree(desc->irq);
 kfree(desc->ubuf);
 free_urbs(desc);
 kfree(desc);
}

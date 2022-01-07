
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct acm {int rx_buflimit; TYPE_1__* rb; int readsize; int control; } ;
struct TYPE_2__ {int dma; int base; } ;


 struct usb_device* interface_to_usbdev (int ) ;
 int usb_buffer_free (struct usb_device*,int ,int ,int ) ;

__attribute__((used)) static void acm_read_buffers_free(struct acm *acm)
{
 struct usb_device *usb_dev = interface_to_usbdev(acm->control);
 int i, n = acm->rx_buflimit;

 for (i = 0; i < n; i++)
  usb_buffer_free(usb_dev, acm->readsize,
     acm->rb[i].base, acm->rb[i].dma);
}

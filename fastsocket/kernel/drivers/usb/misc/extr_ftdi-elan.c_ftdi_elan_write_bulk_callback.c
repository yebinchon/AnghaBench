
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ftdi {TYPE_1__* udev; } ;
struct urb {int status; int transfer_dma; int transfer_buffer; int transfer_buffer_length; int dev; struct usb_ftdi* context; } ;
struct TYPE_2__ {int dev; } ;


 int ECONNRESET ;
 int ENOENT ;
 int ESHUTDOWN ;
 int dev_err (int *,char*,struct urb*,int) ;
 int usb_buffer_free (int ,int ,int ,int ) ;

__attribute__((used)) static void ftdi_elan_write_bulk_callback(struct urb *urb)
{
 struct usb_ftdi *ftdi = urb->context;
 int status = urb->status;

 if (status && !(status == -ENOENT || status == -ECONNRESET ||
     status == -ESHUTDOWN)) {
                dev_err(&ftdi->udev->dev, "urb=%p write bulk status received: %"
                        "d\n", urb, status);
        }
        usb_buffer_free(urb->dev, urb->transfer_buffer_length,
                urb->transfer_buffer, urb->transfer_dma);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct acm_wb {int dmah; int buf; } ;
struct acm {int writesize; struct acm_wb* wb; int control; } ;


 int ACM_NW ;
 struct usb_device* interface_to_usbdev (int ) ;
 int usb_buffer_free (struct usb_device*,int ,int ,int ) ;

__attribute__((used)) static void acm_write_buffers_free(struct acm *acm)
{
 int i;
 struct acm_wb *wb;
 struct usb_device *usb_dev = interface_to_usbdev(acm->control);

 for (wb = &acm->wb[0], i = 0; i < ACM_NW; i++, wb++)
  usb_buffer_free(usb_dev, acm->writesize, wb->buf, wb->dmah);
}

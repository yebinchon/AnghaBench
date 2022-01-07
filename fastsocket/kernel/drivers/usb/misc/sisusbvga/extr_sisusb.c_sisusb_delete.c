
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {struct sisusb_usb_data* SiS_Pr; int * sisusb_dev; } ;
struct kref {int dummy; } ;


 int kfree (struct sisusb_usb_data*) ;
 int sisusb_free_buffers (struct sisusb_usb_data*) ;
 int sisusb_free_urbs (struct sisusb_usb_data*) ;
 struct sisusb_usb_data* to_sisusb_dev (struct kref*) ;
 int usb_put_dev (int *) ;

void
sisusb_delete(struct kref *kref)
{
 struct sisusb_usb_data *sisusb = to_sisusb_dev(kref);

 if (!sisusb)
  return;

 if (sisusb->sisusb_dev)
  usb_put_dev(sisusb->sisusb_dev);

 sisusb->sisusb_dev = ((void*)0);
 sisusb_free_buffers(sisusb);
 sisusb_free_urbs(sisusb);



 kfree(sisusb);
}

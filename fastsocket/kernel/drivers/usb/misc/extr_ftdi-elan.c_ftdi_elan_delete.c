
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ftdi {int disconnected; int * bulk_in_buffer; int ftdi_list; TYPE_1__* udev; } ;
struct kref {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int dev_warn (int *,char*,struct usb_ftdi*) ;
 int ftdi_instances ;
 int ftdi_module_lock ;
 int kfree (int *) ;
 struct usb_ftdi* kref_to_usb_ftdi (struct kref*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_put_dev (TYPE_1__*) ;

__attribute__((used)) static void ftdi_elan_delete(struct kref *kref)
{
        struct usb_ftdi *ftdi = kref_to_usb_ftdi(kref);
        dev_warn(&ftdi->udev->dev, "FREEING ftdi=%p\n", ftdi);
        usb_put_dev(ftdi->udev);
        ftdi->disconnected += 1;
        mutex_lock(&ftdi_module_lock);
        list_del_init(&ftdi->ftdi_list);
        ftdi_instances -= 1;
        mutex_unlock(&ftdi_module_lock);
        kfree(ftdi->bulk_in_buffer);
        ftdi->bulk_in_buffer = ((void*)0);
}

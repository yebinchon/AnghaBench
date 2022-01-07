
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ftdi {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static void ftdi_elan_get_kref(struct usb_ftdi *ftdi)
{
        kref_get(&ftdi->kref);
}

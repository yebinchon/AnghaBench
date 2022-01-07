
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ftdi {int kref; } ;


 int ftdi_elan_delete ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void ftdi_elan_put_kref(struct usb_ftdi *ftdi)
{
        kref_put(&ftdi->kref, ftdi_elan_delete);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int name; } ;


 int CHIP ;
 int EISNAM ;

__attribute__((used)) static int gadgetfs_probe (struct usb_gadget *gadget)
{
 CHIP = gadget->name;
 return -EISNAM;
}

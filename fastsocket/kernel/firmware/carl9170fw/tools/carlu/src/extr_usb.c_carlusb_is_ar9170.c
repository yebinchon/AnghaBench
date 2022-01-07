
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct libusb_device_descriptor {scalar_t__ idVendor; scalar_t__ idProduct; } ;
struct TYPE_3__ {scalar_t__ idVendor; scalar_t__ idProduct; int product_name; int vendor_name; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int dbg (char*,int ,int ,scalar_t__,scalar_t__) ;
 TYPE_1__* dev_list ;

__attribute__((used)) static int carlusb_is_ar9170(struct libusb_device_descriptor *desc)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(dev_list); i++) {
  if ((desc->idVendor == dev_list[i].idVendor) &&
      (desc->idProduct == dev_list[i].idProduct)) {
   dbg("== found device \"%s %s\" [0x%04x:0x%04x]\n",
    dev_list[i].vendor_name, dev_list[i].product_name,
    desc->idVendor, desc->idProduct);

   return i;
  }
 }

 return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int idProduct; int idVendor; int product_name; int vendor_name; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EXIT_SUCCESS ;
 int INFO ;
 int debug_level ;
 TYPE_1__* dev_list ;
 int info (char*,...) ;

int carlusb_print_known_devices(void)
{
 unsigned int i;

 debug_level = INFO;

 info("==> dumping known device list <==\n");
 for (i = 0; i < ARRAY_SIZE(dev_list); i++) {
  info("Vendor:\"%-9s\" Product:\"%-26s\" => USBID:[0x%04x:0x%04x]\n",
       dev_list[i].vendor_name, dev_list[i].product_name,
       dev_list[i].idVendor, dev_list[i].idProduct);
 }
 info("==> end of device list <==\n");

 return EXIT_SUCCESS;
}

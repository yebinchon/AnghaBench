
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ds_driver ;
 int usb_deregister (int *) ;

__attribute__((used)) static void ds_fini(void)
{
 usb_deregister(&ds_driver);
}

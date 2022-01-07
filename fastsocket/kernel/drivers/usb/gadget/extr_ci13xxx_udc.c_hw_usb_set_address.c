
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CAP_DEVICEADDR ;
 int DEVICEADDR_USBADR ;
 int DEVICEADDR_USBADRA ;
 int ffs_nr (int) ;
 int hw_cwrite (int ,int,int) ;

__attribute__((used)) static int hw_usb_set_address(u8 value)
{

 hw_cwrite(CAP_DEVICEADDR, DEVICEADDR_USBADR | DEVICEADDR_USBADRA,
    value << ffs_nr(DEVICEADDR_USBADR) | DEVICEADDR_USBADRA);
 return 0;
}

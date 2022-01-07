
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_usb {int dummy; } ;


 int TWL4030_MODULE_USB ;
 int twl4030_readb (struct twl4030_usb*,int ,int ) ;

__attribute__((used)) static inline int twl4030_usb_read(struct twl4030_usb *twl, u8 address)
{
 return twl4030_readb(twl, TWL4030_MODULE_USB, address);
}

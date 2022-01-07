
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct twl4030_usb {int dummy; } ;


 int twl4030_usb_write (struct twl4030_usb*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline int
twl4030_usb_set_bits(struct twl4030_usb *twl, u8 reg, u8 bits)
{
 return twl4030_usb_write(twl, reg + 1, bits);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int USB_INDEX ;
 scalar_t__ io_p2v (int ) ;

__attribute__((used)) static __inline__ void usb_set_index(u32 ep)
{
 *(volatile u32 *)io_p2v(USB_INDEX) = ep;
}

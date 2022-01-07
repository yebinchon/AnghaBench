
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ci13xxx_ep {scalar_t__ dir; int num; } ;


 scalar_t__ TX ;
 int USB_ENDPOINT_DIR_MASK ;

__attribute__((used)) static inline u8 _usb_addr(struct ci13xxx_ep *ep)
{
 return ((ep->dir == TX) ? USB_ENDPOINT_DIR_MASK : 0) | ep->num;
}

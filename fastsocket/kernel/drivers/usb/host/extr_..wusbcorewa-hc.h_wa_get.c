
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wahc {int usb_iface; } ;


 int usb_get_intf (int ) ;

__attribute__((used)) static inline struct wahc *wa_get(struct wahc *wa)
{
 usb_get_intf(wa->usb_iface);
 return wa;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wahc {int nep_urb; } ;


 int usb_kill_urb (int ) ;

__attribute__((used)) static inline void wa_nep_disarm(struct wahc *wa)
{
 usb_kill_urb(wa->nep_urb);
}

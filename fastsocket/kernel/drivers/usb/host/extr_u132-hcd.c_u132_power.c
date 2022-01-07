
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int state; } ;
struct u132 {int power; } ;


 int HC_STATE_HALT ;
 struct usb_hcd* u132_to_hcd (struct u132*) ;

__attribute__((used)) static void u132_power(struct u132 *u132, int is_on)
{
 struct usb_hcd *hcd = u132_to_hcd(u132)
  ;
 if (is_on) {
  if (u132->power)
   return;
  u132->power = 1;
 } else {
  u132->power = 0;
  hcd->state = HC_STATE_HALT;
 }
}

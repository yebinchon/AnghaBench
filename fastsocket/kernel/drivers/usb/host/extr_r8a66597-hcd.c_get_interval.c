
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct urb {TYPE_1__* dev; } ;
typedef int __u8 ;
struct TYPE_2__ {scalar_t__ speed; } ;


 int IITV ;
 scalar_t__ USB_SPEED_HIGH ;

__attribute__((used)) static u16 get_interval(struct urb *urb, __u8 interval)
{
 u16 time = 1;
 int i;

 if (urb->dev->speed == USB_SPEED_HIGH) {
  if (interval > IITV)
   time = IITV;
  else
   time = interval ? interval - 1 : 0;
 } else {
  if (interval > 128) {
   time = IITV;
  } else {

   for (i = 0; i < 7; i++) {
    if ((1 << i) < interval &&
        (1 << (i + 1) > interval))
     time = 1 << i;
   }
  }
 }

 return time;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int maxpacket; } ;
struct dummy_ep {TYPE_3__* desc; TYPE_1__ ep; } ;
struct TYPE_5__ {scalar_t__ speed; } ;
struct dummy {TYPE_2__ gadget; } ;
struct TYPE_6__ {int wMaxPacketSize; } ;


 scalar_t__ USB_SPEED_HIGH ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int periodic_bytes (struct dummy *dum, struct dummy_ep *ep)
{
 int limit = ep->ep.maxpacket;

 if (dum->gadget.speed == USB_SPEED_HIGH) {
  int tmp;


  tmp = le16_to_cpu(ep->desc->wMaxPacketSize);
  tmp = (tmp >> 11) & 0x03;
  tmp *= 8 ;
  limit += limit * tmp;
 }
 return limit;
}

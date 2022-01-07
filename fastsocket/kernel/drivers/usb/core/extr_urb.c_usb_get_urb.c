
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int kref; } ;


 int kref_get (int *) ;

struct urb *usb_get_urb(struct urb *urb)
{
 if (urb)
  kref_get(&urb->kref);
 return urb;
}

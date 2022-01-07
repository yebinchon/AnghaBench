
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_anchor {int urb_list; } ;


 int list_empty (int *) ;

int usb_anchor_empty(struct usb_anchor *anchor)
{
 return list_empty(&anchor->urb_list);
}

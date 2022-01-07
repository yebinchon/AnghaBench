
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_endpoint_descriptor {scalar_t__ bEndpointAddress; scalar_t__ bmAttributes; scalar_t__ wMaxPacketSize; } ;



__attribute__((used)) static int mdc800_endpoint_equals (struct usb_endpoint_descriptor *a,struct usb_endpoint_descriptor *b)
{
 return (
     ( a->bEndpointAddress == b->bEndpointAddress )
  && ( a->bmAttributes == b->bmAttributes )
  && ( a->wMaxPacketSize == b->wMaxPacketSize )
 );
}

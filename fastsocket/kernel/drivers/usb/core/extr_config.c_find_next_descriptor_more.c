
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_descriptor_header {int bDescriptorType; scalar_t__ bLength; } ;



__attribute__((used)) static int find_next_descriptor_more(unsigned char *buffer, int size,
    int dt1, int dt2, int dt3, int *num_skipped)
{
 struct usb_descriptor_header *h;
 int n = 0;
 unsigned char *buffer0 = buffer;


 while (size > 0) {
  h = (struct usb_descriptor_header *) buffer;
  if (h->bDescriptorType == dt1 || h->bDescriptorType == dt2 ||
    h->bDescriptorType == dt3)
   break;
  buffer += h->bLength;
  size -= h->bLength;
  ++n;
 }



 if (num_skipped)
  *num_skipped = n;
 return buffer - buffer0;
}

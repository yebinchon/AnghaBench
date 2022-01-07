
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_iso_packet_descriptor {int actual_length; int status; int length; int offset; } ;
struct usb_iso_packet_descriptor {int actual_length; int status; int length; int offset; } ;



__attribute__((used)) static void usbip_pack_iso(struct usbip_iso_packet_descriptor *iso,
  struct usb_iso_packet_descriptor *uiso, int pack)
{
 if (pack) {
  iso->offset = uiso->offset;
  iso->length = uiso->length;
  iso->status = uiso->status;
  iso->actual_length = uiso->actual_length;
 } else {
  uiso->offset = iso->offset;
  uiso->length = iso->length;
  uiso->status = iso->status;
  uiso->actual_length = iso->actual_length;
 }
}

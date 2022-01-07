
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_request {int* buf; unsigned int actual; } ;
struct usb_ep {int dummy; } ;


 int* gmidi_cin_length ;
 int gmidi_read_data (struct usb_ep*,int,int*,int) ;

__attribute__((used)) static void gmidi_handle_out_data(struct usb_ep *ep, struct usb_request *req)
{
 unsigned i;
 u8 *buf = req->buf;

 for (i = 0; i + 3 < req->actual; i += 4) {
  if (buf[i] != 0) {
   int cable = buf[i] >> 4;
   int length = gmidi_cin_length[buf[i] & 0x0f];
   gmidi_read_data(ep, cable, &buf[i + 1], length);
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct usb_request {unsigned int length; scalar_t__ buf; } ;



__attribute__((used)) static void gmidi_transmit_packet(struct usb_request *req, uint8_t p0,
     uint8_t p1, uint8_t p2, uint8_t p3)
{
 unsigned length = req->length;
 u8 *buf = (u8 *)req->buf + length;

 buf[0] = p0;
 buf[1] = p1;
 buf[2] = p2;
 buf[3] = p3;
 req->length = length + 4;
}

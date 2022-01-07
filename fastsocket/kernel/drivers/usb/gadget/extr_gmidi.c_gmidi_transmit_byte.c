
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_request {int dummy; } ;
struct gmidi_in_port {int cable; int* data; int state; } ;
 void* STATE_UNKNOWN ;
 int gmidi_transmit_packet (struct usb_request*,int,int,int,int) ;

__attribute__((used)) static void gmidi_transmit_byte(struct usb_request *req,
    struct gmidi_in_port *port, uint8_t b)
{
 uint8_t p0 = port->cable;

 if (b >= 0xf8) {
  gmidi_transmit_packet(req, p0 | 0x0f, b, 0, 0);
 } else if (b >= 0xf0) {
  switch (b) {
  case 0xf0:
   port->data[0] = b;
   port->state = 129;
   break;
  case 0xf1:
  case 0xf3:
   port->data[0] = b;
   port->state = 133;
   break;
  case 0xf2:
   port->data[0] = b;
   port->state = 132;
   break;
  case 0xf4:
  case 0xf5:
   port->state = STATE_UNKNOWN;
   break;
  case 0xf6:
   gmidi_transmit_packet(req, p0 | 0x05, 0xf6, 0, 0);
   port->state = STATE_UNKNOWN;
   break;
  case 0xf7:
   switch (port->state) {
   case 130:
    gmidi_transmit_packet(req,
     p0 | 0x05, 0xf7, 0, 0);
    break;
   case 129:
    gmidi_transmit_packet(req,
     p0 | 0x06, port->data[0], 0xf7, 0);
    break;
   case 128:
    gmidi_transmit_packet(req,
     p0 | 0x07, port->data[0],
     port->data[1], 0xf7);
    break;
   }
   port->state = STATE_UNKNOWN;
   break;
  }
 } else if (b >= 0x80) {
  port->data[0] = b;
  if (b >= 0xc0 && b <= 0xdf)
   port->state = 133;
  else
   port->state = 132;
 } else {
  switch (port->state) {
  case 133:
   if (port->data[0] < 0xf0) {
    p0 |= port->data[0] >> 4;
   } else {
    p0 |= 0x02;
    port->state = STATE_UNKNOWN;
   }
   gmidi_transmit_packet(req, p0, port->data[0], b, 0);
   break;
  case 132:
   port->data[1] = b;
   port->state = 131;
   break;
  case 131:
   if (port->data[0] < 0xf0) {
    p0 |= port->data[0] >> 4;
    port->state = 132;
   } else {
    p0 |= 0x03;
    port->state = STATE_UNKNOWN;
   }
   gmidi_transmit_packet(req,
    p0, port->data[0], port->data[1], b);
   break;
  case 130:
   port->data[0] = b;
   port->state = 129;
   break;
  case 129:
   port->data[1] = b;
   port->state = 128;
   break;
  case 128:
   gmidi_transmit_packet(req,
    p0 | 0x04, port->data[0], port->data[1], b);
   port->state = 130;
   break;
  }
 }
}

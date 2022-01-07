
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbip_header_cmd_submit {int interval; int number_of_packets; int start_frame; int transfer_buffer_length; int transfer_flags; } ;
struct TYPE_2__ {struct usbip_header_cmd_submit cmd_submit; } ;
struct usbip_header {TYPE_1__ u; } ;
struct urb {int interval; int number_of_packets; int start_frame; int transfer_buffer_length; int transfer_flags; } ;


 int tweak_transfer_flags (int ) ;

__attribute__((used)) static void usbip_pack_cmd_submit(struct usbip_header *pdu, struct urb *urb,
        int pack)
{
 struct usbip_header_cmd_submit *spdu = &pdu->u.cmd_submit;





 if (pack) {

  spdu->transfer_flags =
    tweak_transfer_flags(urb->transfer_flags);
  spdu->transfer_buffer_length = urb->transfer_buffer_length;
  spdu->start_frame = urb->start_frame;
  spdu->number_of_packets = urb->number_of_packets;
  spdu->interval = urb->interval;
 } else {

  urb->transfer_flags = spdu->transfer_flags;

  urb->transfer_buffer_length = spdu->transfer_buffer_length;
  urb->start_frame = spdu->start_frame;
  urb->number_of_packets = spdu->number_of_packets;
  urb->interval = spdu->interval;
 }
}

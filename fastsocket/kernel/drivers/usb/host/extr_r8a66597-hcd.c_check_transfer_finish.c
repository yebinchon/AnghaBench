
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ number_of_packets; scalar_t__ transfer_buffer_length; scalar_t__ actual_length; int pipe; } ;
struct r8a66597_td {scalar_t__ iso_cnt; scalar_t__ zero_packet; scalar_t__ short_packet; } ;


 scalar_t__ usb_pipeisoc (int ) ;

__attribute__((used)) static int check_transfer_finish(struct r8a66597_td *td, struct urb *urb)
{
 if (usb_pipeisoc(urb->pipe)) {
  if (urb->number_of_packets == td->iso_cnt)
   return 1;
 }


 if ((urb->transfer_buffer_length <= urb->actual_length) ||
     (td->short_packet) || (td->zero_packet))
  return 1;

 return 0;
}

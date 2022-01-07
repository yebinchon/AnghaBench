
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbip_header_ret_submit {int error_count; int start_frame; int actual_length; int status; } ;
struct TYPE_2__ {struct usbip_header_ret_submit ret_submit; } ;
struct usbip_header {TYPE_1__ u; } ;
struct urb {int error_count; int start_frame; int actual_length; int status; } ;



__attribute__((used)) static void usbip_pack_ret_submit(struct usbip_header *pdu, struct urb *urb,
        int pack)
{
 struct usbip_header_ret_submit *rpdu = &pdu->u.ret_submit;

 if (pack) {


  rpdu->status = urb->status;
  rpdu->actual_length = urb->actual_length;
  rpdu->start_frame = urb->start_frame;
  rpdu->error_count = urb->error_count;
 } else {


  urb->status = rpdu->status;
  urb->actual_length = rpdu->actual_length;
  urb->start_frame = rpdu->start_frame;
  urb->error_count = rpdu->error_count;
 }
}

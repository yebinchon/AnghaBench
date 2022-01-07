
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wa_xfer_abort_buffer {int urb; } ;
struct urb {struct wa_xfer_abort_buffer* context; } ;


 int usb_put_urb (int *) ;

__attribute__((used)) static void __wa_xfer_abort_cb(struct urb *urb)
{
 struct wa_xfer_abort_buffer *b = urb->context;
 usb_put_urb(&b->urb);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ context; } ;
struct message {scalar_t__ done; scalar_t__ size; } ;


 int kfree (struct message*) ;
 int line6_send_raw_message_async_part (struct message*,struct urb*) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void line6_async_request_sent(struct urb *urb)
{
 struct message *msg = (struct message *)urb->context;

 if (msg->done >= msg->size) {
  usb_free_urb(urb);
  kfree(msg);
 } else
  line6_send_raw_message_async_part(msg, urb);
}

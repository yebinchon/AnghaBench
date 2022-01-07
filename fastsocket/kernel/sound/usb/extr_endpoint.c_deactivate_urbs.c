
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int dummy; } ;
struct snd_usb_endpoint {unsigned int nurbs; TYPE_2__* urb; int unlink_mask; int active_mask; scalar_t__ next_packet_write_pos; scalar_t__ next_packet_read_pos; int ready_playback_urbs; int flags; TYPE_1__* chip; } ;
struct TYPE_4__ {struct urb* urb; } ;
struct TYPE_3__ {scalar_t__ async_unlink; scalar_t__ shutdown; } ;


 int EBADFD ;
 int EP_FLAG_RUNNING ;
 int INIT_LIST_HEAD (int *) ;
 int clear_bit (int ,int *) ;
 scalar_t__ in_interrupt () ;
 int test_and_set_bit (unsigned int,int *) ;
 scalar_t__ test_bit (unsigned int,int *) ;
 int usb_kill_urb (struct urb*) ;
 int usb_unlink_urb (struct urb*) ;

__attribute__((used)) static int deactivate_urbs(struct snd_usb_endpoint *ep, int force, int can_sleep)
{
 unsigned int i;
 int async;

 if (!force && ep->chip->shutdown)
  return -EBADFD;

 async = !can_sleep && ep->chip->async_unlink;

 clear_bit(EP_FLAG_RUNNING, &ep->flags);

 INIT_LIST_HEAD(&ep->ready_playback_urbs);
 ep->next_packet_read_pos = 0;
 ep->next_packet_write_pos = 0;

 if (!async && in_interrupt())
  return 0;

 for (i = 0; i < ep->nurbs; i++) {
  if (test_bit(i, &ep->active_mask)) {
   if (!test_and_set_bit(i, &ep->unlink_mask)) {
    struct urb *u = ep->urb[i].urb;
    if (async)
     usb_unlink_urb(u);
    else
     usb_kill_urb(u);
   }
  }
 }

 return 0;
}

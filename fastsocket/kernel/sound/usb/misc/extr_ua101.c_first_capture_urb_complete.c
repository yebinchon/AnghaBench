
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int (* complete ) (struct urb*) ;struct ua101* context; } ;
struct ua101 {int alsa_capture_wait; int states; } ;


 int CAPTURE_URB_COMPLETED ;
 int capture_urb_complete (struct urb*) ;
 int set_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void first_capture_urb_complete(struct urb *urb)
{
 struct ua101 *ua = urb->context;

 urb->complete = capture_urb_complete;
 capture_urb_complete(urb);

 set_bit(CAPTURE_URB_COMPLETED, &ua->states);
 wake_up(&ua->alsa_capture_wait);
}

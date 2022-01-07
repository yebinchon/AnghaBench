
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_flags; struct urb* transfer_buffer; } ;
struct kref {int dummy; } ;


 int URB_FREE_BUFFER ;
 int kfree (struct urb*) ;
 struct urb* to_urb (struct kref*) ;

__attribute__((used)) static void urb_destroy(struct kref *kref)
{
 struct urb *urb = to_urb(kref);

 if (urb->transfer_flags & URB_FREE_BUFFER)
  kfree(urb->transfer_buffer);

 kfree(urb);
}

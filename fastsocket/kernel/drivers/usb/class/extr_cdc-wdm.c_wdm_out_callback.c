
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdm_device {int wait; int outbuf; int flags; int iuspin; int werr; } ;
struct urb {int status; struct wdm_device* context; } ;


 int WDM_IN_USE ;
 int clear_bit (int ,int *) ;
 int kfree (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void wdm_out_callback(struct urb *urb)
{
 struct wdm_device *desc;
 desc = urb->context;
 spin_lock(&desc->iuspin);
 desc->werr = urb->status;
 spin_unlock(&desc->iuspin);
 clear_bit(WDM_IN_USE, &desc->flags);
 kfree(desc->outbuf);
 wake_up(&desc->wait);
}

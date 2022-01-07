
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct qe_udc {int lock; int gadget; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* disconnect ) (int *) ;} ;


 scalar_t__ USB_MAX_ENDPOINTS ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *) ;
 int udc_reset_ep_queue (struct qe_udc*,scalar_t__) ;

__attribute__((used)) static int reset_queues(struct qe_udc *udc)
{
 u8 pipe;

 for (pipe = 0; pipe < USB_MAX_ENDPOINTS; pipe++)
  udc_reset_ep_queue(udc, pipe);


 spin_unlock(&udc->lock);
 udc->driver->disconnect(&udc->gadget);
 spin_lock(&udc->lock);

 return 0;
}

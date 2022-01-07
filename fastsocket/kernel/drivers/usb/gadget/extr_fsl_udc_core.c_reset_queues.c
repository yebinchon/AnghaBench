
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct fsl_udc {scalar_t__ max_pipes; int lock; int gadget; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* disconnect ) (int *) ;} ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *) ;
 int udc_reset_ep_queue (struct fsl_udc*,scalar_t__) ;

__attribute__((used)) static int reset_queues(struct fsl_udc *udc)
{
 u8 pipe;

 for (pipe = 0; pipe < udc->max_pipes; pipe++)
  udc_reset_ep_queue(udc, pipe);


 spin_unlock(&udc->lock);
 udc->driver->disconnect(&udc->gadget);
 spin_lock(&udc->lock);

 return 0;
}

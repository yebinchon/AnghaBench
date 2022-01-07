
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_gadget_driver {int (* unbind ) (TYPE_4__*) ;int * resume; int * suspend; int * disconnect; int * setup; int * bind; } ;
struct TYPE_7__ {int ep_list; } ;
struct ci13xxx_ep {TYPE_3__* qh; TYPE_2__ ep; } ;
struct TYPE_6__ {int * driver; } ;
struct TYPE_9__ {int * ep0; TYPE_1__ dev; int * ops; } ;
struct ci13xxx {int * qh_pool; int * td_pool; int lock; struct usb_gadget_driver* driver; TYPE_4__ gadget; struct ci13xxx_ep* ci13xxx_ep; } ;
struct TYPE_8__ {int dma; int * ptr; } ;


 int EINVAL ;
 unsigned long RX ;
 unsigned long TX ;
 int _gadget_stop_activity (TYPE_4__*) ;
 struct ci13xxx* _udc ;
 int dma_pool_destroy (int *) ;
 int dma_pool_free (int *,int *,int ) ;
 int hw_device_state (int ) ;
 unsigned long hw_ep_max ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (TYPE_4__*) ;
 int trace (char*,struct usb_gadget_driver*) ;

int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
{
 struct ci13xxx *udc = _udc;
 unsigned long i, k, flags;

 trace("%p", driver);

 if (driver == ((void*)0) ||
     driver->bind == ((void*)0) ||
     driver->unbind == ((void*)0) ||
     driver->setup == ((void*)0) ||
     driver->disconnect == ((void*)0) ||
     driver->suspend == ((void*)0) ||
     driver->resume == ((void*)0) ||
     driver != udc->driver)
  return -EINVAL;

 spin_lock_irqsave(udc->lock, flags);

 hw_device_state(0);


 if (udc->gadget.ops != ((void*)0)) {
  _gadget_stop_activity(&udc->gadget);

  spin_unlock_irqrestore(udc->lock, flags);
  driver->unbind(&udc->gadget);
  spin_lock_irqsave(udc->lock, flags);

  udc->gadget.ops = ((void*)0);
  udc->gadget.dev.driver = ((void*)0);
 }


 for (i = 0; i < hw_ep_max; i++) {
  struct ci13xxx_ep *mEp = &udc->ci13xxx_ep[i];

  if (i == 0)
   udc->gadget.ep0 = ((void*)0);
  else if (!list_empty(&mEp->ep.ep_list))
   list_del_init(&mEp->ep.ep_list);

  for (k = RX; k <= TX; k++)
   if (mEp->qh[k].ptr != ((void*)0))
    dma_pool_free(udc->qh_pool,
           mEp->qh[k].ptr, mEp->qh[k].dma);
 }

 udc->driver = ((void*)0);

 spin_unlock_irqrestore(udc->lock, flags);

 if (udc->td_pool != ((void*)0)) {
  dma_pool_destroy(udc->td_pool);
  udc->td_pool = ((void*)0);
 }
 if (udc->qh_pool != ((void*)0)) {
  dma_pool_destroy(udc->qh_pool);
  udc->qh_pool = ((void*)0);
 }

 return 0;
}

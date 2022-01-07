
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * bus; } ;
struct usb_gadget_driver {int (* bind ) (TYPE_4__*) ;TYPE_2__ driver; int * resume; int * suspend; int * disconnect; int * setup; int * unbind; } ;
struct ci13xxx_td {int dummy; } ;
struct ci13xxx_qh {int dummy; } ;
struct TYPE_6__ {int ep_list; int maxpacket; int * ops; int name; } ;
struct ci13xxx_ep {TYPE_3__* qh; TYPE_1__ ep; int name; int * td_pool; TYPE_5__* device; int lock; } ;
struct TYPE_10__ {TYPE_2__* driver; } ;
struct TYPE_9__ {TYPE_5__ dev; int * ops; int ep_list; TYPE_1__* ep0; } ;
struct ci13xxx {int lock; struct ci13xxx_ep* ci13xxx_ep; TYPE_4__ gadget; int * qh_pool; int * td_pool; struct usb_gadget_driver* driver; } ;
struct TYPE_8__ {int dma; int * ptr; int queue; } ;


 int CTRL_PAYLOAD_MAX ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 size_t RX ;
 unsigned long TX ;
 struct ci13xxx* _udc ;
 int * dma_pool_alloc (int *,int ,int *) ;
 void* dma_pool_create (char*,TYPE_5__*,int,int,int ) ;
 int dma_pool_destroy (int *) ;
 int hw_device_state (int ) ;
 unsigned long hw_ep_max ;
 int info (char*,unsigned long) ;
 int list_add_tail (int *,int *) ;
 int memset (int *,int ,int) ;
 int scnprintf (int ,int,char*,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (TYPE_4__*) ;
 int trace (char*,struct usb_gadget_driver*) ;
 int usb_ep_ops ;
 int usb_gadget_ops ;
 int usb_gadget_unregister_driver (struct usb_gadget_driver*) ;

int usb_gadget_register_driver(struct usb_gadget_driver *driver)
{
 struct ci13xxx *udc = _udc;
 unsigned long i, k, flags;
 int retval = -ENOMEM;

 trace("%p", driver);

 if (driver == ((void*)0) ||
     driver->bind == ((void*)0) ||
     driver->unbind == ((void*)0) ||
     driver->setup == ((void*)0) ||
     driver->disconnect == ((void*)0) ||
     driver->suspend == ((void*)0) ||
     driver->resume == ((void*)0))
  return -EINVAL;
 else if (udc == ((void*)0))
  return -ENODEV;
 else if (udc->driver != ((void*)0))
  return -EBUSY;


 udc->qh_pool = dma_pool_create("ci13xxx_qh", &udc->gadget.dev,
           sizeof(struct ci13xxx_qh),
           64, PAGE_SIZE);
 if (udc->qh_pool == ((void*)0))
  return -ENOMEM;

 udc->td_pool = dma_pool_create("ci13xxx_td", &udc->gadget.dev,
           sizeof(struct ci13xxx_td),
           64, PAGE_SIZE);
 if (udc->td_pool == ((void*)0)) {
  dma_pool_destroy(udc->qh_pool);
  udc->qh_pool = ((void*)0);
  return -ENOMEM;
 }

 spin_lock_irqsave(udc->lock, flags);

 info("hw_ep_max = %d", hw_ep_max);

 udc->driver = driver;
 udc->gadget.ops = ((void*)0);
 udc->gadget.dev.driver = ((void*)0);

 retval = 0;
 for (i = 0; i < hw_ep_max; i++) {
  struct ci13xxx_ep *mEp = &udc->ci13xxx_ep[i];

  scnprintf(mEp->name, sizeof(mEp->name), "ep%i", (int)i);

  mEp->lock = udc->lock;
  mEp->device = &udc->gadget.dev;
  mEp->td_pool = udc->td_pool;

  mEp->ep.name = mEp->name;
  mEp->ep.ops = &usb_ep_ops;
  mEp->ep.maxpacket = CTRL_PAYLOAD_MAX;


  for (k = RX; k <= TX; k++) {
   INIT_LIST_HEAD(&mEp->qh[k].queue);
   mEp->qh[k].ptr = dma_pool_alloc(udc->qh_pool,
       GFP_KERNEL,
       &mEp->qh[k].dma);
   if (mEp->qh[k].ptr == ((void*)0))
    retval = -ENOMEM;
   else
    memset(mEp->qh[k].ptr, 0,
           sizeof(*mEp->qh[k].ptr));
  }
  if (i == 0)
   udc->gadget.ep0 = &mEp->ep;
  else
   list_add_tail(&mEp->ep.ep_list, &udc->gadget.ep_list);
 }
 if (retval)
  goto done;


 driver->driver.bus = ((void*)0);
 udc->gadget.ops = &usb_gadget_ops;
 udc->gadget.dev.driver = &driver->driver;

 spin_unlock_irqrestore(udc->lock, flags);
 retval = driver->bind(&udc->gadget);
 spin_lock_irqsave(udc->lock, flags);

 if (retval) {
  udc->gadget.ops = ((void*)0);
  udc->gadget.dev.driver = ((void*)0);
  goto done;
 }

 retval = hw_device_state(udc->ci13xxx_ep[0].qh[RX].dma);

 done:
 spin_unlock_irqrestore(udc->lock, flags);
 if (retval)
  usb_gadget_unregister_driver(driver);
 return retval;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {scalar_t__ status; int complete; int * buf; } ;
struct usb_ep {struct dev_data* driver_data; } ;
struct dev_data {int setup_out_error; int setup_out_ready; int lock; int rbuf; int setup_in; } ;


 int clean_req (struct usb_ep*,struct usb_request*) ;
 int ep0_readable (struct dev_data*) ;
 int epio_complete ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ep0_complete (struct usb_ep *ep, struct usb_request *req)
{
 struct dev_data *dev = ep->driver_data;
 unsigned long flags;
 int free = 1;


 spin_lock_irqsave(&dev->lock, flags);
 if (!dev->setup_in) {
  dev->setup_out_error = (req->status != 0);
  if (!dev->setup_out_error)
   free = 0;
  dev->setup_out_ready = 1;
  ep0_readable (dev);
 }


 if (free && req->buf != &dev->rbuf)
  clean_req (ep, req);
 req->complete = epio_complete;
 spin_unlock_irqrestore(&dev->lock, flags);
}

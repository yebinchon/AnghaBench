
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb_priv {scalar_t__ req; struct ep_data* epdata; } ;
struct kiocb {struct kiocb_priv* private; } ;
struct io_event {int dummy; } ;
struct ep_data {scalar_t__ ep; } ;


 int EINVAL ;
 int aio_put_req (struct kiocb*) ;
 int kiocbSetCancelled (struct kiocb*) ;
 scalar_t__ likely (int) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int usb_ep_dequeue (scalar_t__,scalar_t__) ;

__attribute__((used)) static int ep_aio_cancel(struct kiocb *iocb, struct io_event *e)
{
 struct kiocb_priv *priv = iocb->private;
 struct ep_data *epdata;
 int value;

 local_irq_disable();
 epdata = priv->epdata;

 kiocbSetCancelled(iocb);
 if (likely(epdata && epdata->ep && priv->req))
  value = usb_ep_dequeue (epdata->ep, priv->req);
 else
  value = -EINVAL;

 local_irq_enable();

 aio_put_req(iocb);
 return value;
}

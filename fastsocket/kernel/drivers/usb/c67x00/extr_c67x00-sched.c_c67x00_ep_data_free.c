
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {struct c67x00_ep_data* hcpriv; } ;
struct c67x00_ep_data {int node; int queue; int dev; } ;


 int EBUSY ;
 int kfree (struct c67x00_ep_data*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int usb_put_dev (int ) ;

__attribute__((used)) static int c67x00_ep_data_free(struct usb_host_endpoint *hep)
{
 struct c67x00_ep_data *ep_data = hep->hcpriv;

 if (!ep_data)
  return 0;

 if (!list_empty(&ep_data->queue))
  return -EBUSY;

 usb_put_dev(ep_data->dev);
 list_del(&ep_data->queue);
 list_del(&ep_data->node);

 kfree(ep_data);
 hep->hcpriv = ((void*)0);

 return 0;
}

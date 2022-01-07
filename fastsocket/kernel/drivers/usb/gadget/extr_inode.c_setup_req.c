
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_request {int length; scalar_t__ zero; int complete; int * buf; } ;
struct usb_ep {struct dev_data* driver_data; } ;
struct dev_data {int * rbuf; scalar_t__ setup_out_ready; } ;


 int DBG (struct dev_data*,char*) ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int ep0_complete ;
 int * kmalloc (int,int ) ;

__attribute__((used)) static int setup_req (struct usb_ep *ep, struct usb_request *req, u16 len)
{
 struct dev_data *dev = ep->driver_data;

 if (dev->setup_out_ready) {
  DBG (dev, "ep0 request busy!\n");
  return -EBUSY;
 }
 if (len > sizeof (dev->rbuf))
  req->buf = kmalloc(len, GFP_ATOMIC);
 if (req->buf == ((void*)0)) {
  req->buf = dev->rbuf;
  return -ENOMEM;
 }
 req->complete = ep0_complete;
 req->length = len;
 req->zero = 0;
 return 0;
}

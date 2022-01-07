
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {scalar_t__ buf; int complete; int dma; } ;
struct usb_ep {struct dev_data* driver_data; } ;
struct dev_data {scalar_t__ rbuf; scalar_t__ setup_out_ready; } ;


 int DMA_ADDR_INVALID ;
 int epio_complete ;
 int kfree (scalar_t__) ;

__attribute__((used)) static void clean_req (struct usb_ep *ep, struct usb_request *req)
{
 struct dev_data *dev = ep->driver_data;

 if (req->buf != dev->rbuf) {
  kfree(req->buf);
  req->buf = dev->rbuf;
  req->dma = DMA_ADDR_INVALID;
 }
 req->complete = epio_complete;
 dev->setup_out_ready = 0;
}

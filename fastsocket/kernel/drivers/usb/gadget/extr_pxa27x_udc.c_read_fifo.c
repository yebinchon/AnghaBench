
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxa_ep {int fifo_size; } ;
struct TYPE_2__ {scalar_t__ actual; scalar_t__ length; } ;
struct pxa27x_request {TYPE_1__ req; } ;


 int UDCCSR ;
 int USB_DIR_IN ;
 int ep_dbg (struct pxa_ep*,char*,int ,int,char*,TYPE_1__*,scalar_t__,scalar_t__) ;
 scalar_t__ epout_has_pkt (struct pxa_ep*) ;
 int inc_ep_stats_bytes (struct pxa_ep*,int,int) ;
 int read_packet (struct pxa_ep*,struct pxa27x_request*) ;
 int udc_ep_readl (struct pxa_ep*,int ) ;

__attribute__((used)) static int read_fifo(struct pxa_ep *ep, struct pxa27x_request *req)
{
 int count, is_short, completed = 0;

 while (epout_has_pkt(ep)) {
  count = read_packet(ep, req);
  inc_ep_stats_bytes(ep, count, !USB_DIR_IN);

  is_short = (count < ep->fifo_size);
  ep_dbg(ep, "read udccsr:%03x, count:%d bytes%s req %p %d/%d\n",
   udc_ep_readl(ep, UDCCSR), count, is_short ? "/S" : "",
   &req->req, req->req.actual, req->req.length);


  if (is_short || req->req.actual == req->req.length) {
   completed = 1;
   break;
  }

 }
 return completed;
}

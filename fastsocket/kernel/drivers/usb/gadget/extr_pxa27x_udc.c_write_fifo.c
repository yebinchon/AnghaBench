
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pxa_ep {unsigned int fifo_size; } ;
struct TYPE_2__ {scalar_t__ length; scalar_t__ actual; scalar_t__ zero; } ;
struct pxa27x_request {TYPE_1__ req; } ;


 int UDCCSR ;
 int UDCCSR_PC ;
 int UDCCSR_SP ;
 int UDCCSR_TRN ;
 int USB_DIR_IN ;
 int ep_dbg (struct pxa_ep*,char*,int,char*,char*,scalar_t__,TYPE_1__*) ;
 int ep_is_full (struct pxa_ep*) ;
 int ep_vdbg (struct pxa_ep*,char*,int) ;
 int ep_write_UDCCSR (struct pxa_ep*,int) ;
 int inc_ep_stats_bytes (struct pxa_ep*,int,int ) ;
 scalar_t__ likely (int) ;
 int udc_ep_readl (struct pxa_ep*,int ) ;
 int unlikely (int) ;
 int write_packet (struct pxa_ep*,struct pxa27x_request*,unsigned int) ;

__attribute__((used)) static int write_fifo(struct pxa_ep *ep, struct pxa27x_request *req)
{
 unsigned max;
 int count, is_short, is_last = 0, completed = 0, totcount = 0;
 u32 udccsr;

 max = ep->fifo_size;
 do {
  is_short = 0;

  udccsr = udc_ep_readl(ep, UDCCSR);
  if (udccsr & UDCCSR_PC) {
   ep_vdbg(ep, "Clearing Transmit Complete, udccsr=%x\n",
    udccsr);
   ep_write_UDCCSR(ep, UDCCSR_PC);
  }
  if (udccsr & UDCCSR_TRN) {
   ep_vdbg(ep, "Clearing Underrun on, udccsr=%x\n",
    udccsr);
   ep_write_UDCCSR(ep, UDCCSR_TRN);
  }

  count = write_packet(ep, req, max);
  inc_ep_stats_bytes(ep, count, USB_DIR_IN);
  totcount += count;


  if (unlikely(count < max)) {
   is_last = 1;
   is_short = 1;
  } else {
   if (likely(req->req.length > req->req.actual)
     || req->req.zero)
    is_last = 0;
   else
    is_last = 1;

   is_short = unlikely(max < ep->fifo_size);
  }

  if (is_short)
   ep_write_UDCCSR(ep, UDCCSR_SP);


  if (is_last) {
   completed = 1;
   break;
  }
 } while (!ep_is_full(ep));

 ep_dbg(ep, "wrote count:%d bytes%s%s, left:%d req=%p\n",
   totcount, is_last ? "/L" : "", is_short ? "/S" : "",
   req->req.length - req->req.actual, &req->req);

 return completed;
}

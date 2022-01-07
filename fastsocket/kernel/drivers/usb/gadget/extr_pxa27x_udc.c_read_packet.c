
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pxa_ep {int dummy; } ;
struct TYPE_2__ {int length; int actual; int buf; } ;
struct pxa27x_request {TYPE_1__ req; } ;


 int UDCCSR_PC ;
 int UDCDR ;
 int ep_count_bytes_remain (struct pxa_ep*) ;
 int ep_is_empty (struct pxa_ep*) ;
 int ep_write_UDCCSR (struct pxa_ep*,int ) ;
 scalar_t__ likely (int) ;
 int min (int,int) ;
 int prefetchw (int *) ;
 int udc_ep_readl (struct pxa_ep*,int ) ;

__attribute__((used)) static int read_packet(struct pxa_ep *ep, struct pxa27x_request *req)
{
 u32 *buf;
 int bytes_ep, bufferspace, count, i;

 bytes_ep = ep_count_bytes_remain(ep);
 bufferspace = req->req.length - req->req.actual;

 buf = (u32 *)(req->req.buf + req->req.actual);
 prefetchw(buf);

 if (likely(!ep_is_empty(ep)))
  count = min(bytes_ep, bufferspace);
 else
  count = 0;

 for (i = count; i > 0; i -= 4)
  *buf++ = udc_ep_readl(ep, UDCDR);
 req->req.actual += count;

 ep_write_UDCCSR(ep, UDCCSR_PC);

 return count;
}

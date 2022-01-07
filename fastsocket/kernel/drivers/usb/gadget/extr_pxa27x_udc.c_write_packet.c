
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pxa_ep {int dummy; } ;
struct TYPE_2__ {scalar_t__ actual; int length; scalar_t__ buf; } ;
struct pxa27x_request {TYPE_1__ req; } ;


 int UDCCSR ;
 int UDCDR ;
 int ep_vdbg (struct pxa_ep*,char*,int,int,int ) ;
 int min (scalar_t__,unsigned int) ;
 int prefetch (int *) ;
 int udc_ep_readl (struct pxa_ep*,int ) ;
 int udc_ep_writeb (struct pxa_ep*,int ,int ) ;
 int udc_ep_writel (struct pxa_ep*,int ,int ) ;

__attribute__((used)) static int write_packet(struct pxa_ep *ep, struct pxa27x_request *req,
   unsigned int max)
{
 int length, count, remain, i;
 u32 *buf;
 u8 *buf_8;

 buf = (u32 *)(req->req.buf + req->req.actual);
 prefetch(buf);

 length = min(req->req.length - req->req.actual, max);
 req->req.actual += length;

 remain = length & 0x3;
 count = length & ~(0x3);
 for (i = count; i > 0 ; i -= 4)
  udc_ep_writel(ep, UDCDR, *buf++);

 buf_8 = (u8 *)buf;
 for (i = remain; i > 0; i--)
  udc_ep_writeb(ep, UDCDR, *buf_8++);

 ep_vdbg(ep, "length=%d+%d, udccsr=0x%03x\n", count, remain,
  udc_ep_readl(ep, UDCCSR));

 return length;
}

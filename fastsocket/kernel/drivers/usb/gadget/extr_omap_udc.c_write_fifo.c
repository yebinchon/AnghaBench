
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__ length; scalar_t__ actual; int zero; int * buf; } ;
struct omap_req {TYPE_2__ req; } ;
struct TYPE_3__ {unsigned int maxpacket; } ;
struct omap_ep {int ackwait; TYPE_1__ ep; } ;


 int UDC_CTRL ;
 int UDC_FIFO_UNWRITABLE ;
 int UDC_SET_FIFO_EN ;
 int UDC_STAT_FLG ;
 int done (struct omap_ep*,struct omap_req*,int ) ;
 int omap_readw (int ) ;
 int omap_writew (int ,int ) ;
 int prefetch (int *) ;
 unsigned int write_packet (int *,struct omap_req*,unsigned int) ;

__attribute__((used)) static int write_fifo(struct omap_ep *ep, struct omap_req *req)
{
 u8 *buf;
 unsigned count;
 int is_last;
 u16 ep_stat;

 buf = req->req.buf + req->req.actual;
 prefetch(buf);


 ep_stat = omap_readw(UDC_STAT_FLG);
 if (ep_stat & UDC_FIFO_UNWRITABLE)
  return 0;

 count = ep->ep.maxpacket;
 count = write_packet(buf, req, count);
 omap_writew(UDC_SET_FIFO_EN, UDC_CTRL);
 ep->ackwait = 1;


 if (count != ep->ep.maxpacket)
  is_last = 1;
 else if (req->req.length == req->req.actual
   && !req->req.zero)
  is_last = 1;
 else
  is_last = 0;





 if (is_last)
  done(ep, req, 0);
 return is_last;
}

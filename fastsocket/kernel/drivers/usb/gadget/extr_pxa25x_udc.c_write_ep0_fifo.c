
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {unsigned int length; scalar_t__ actual; } ;
struct pxa25x_request {TYPE_3__ req; } ;
struct pxa25x_ep {TYPE_4__* dev; } ;
struct TYPE_6__ {unsigned int bytes; } ;
struct TYPE_7__ {TYPE_1__ write; } ;
struct TYPE_9__ {scalar_t__ req_pending; TYPE_2__ stats; } ;


 int DBG (int ,char*,unsigned int,scalar_t__,struct pxa25x_request*) ;
 int DBG_VERY_NOISY ;
 unsigned int EP0_FIFO_SIZE ;
 int UDCCS0 ;
 int UDCCS0_IPR ;
 int UDCCS0_OPR ;
 int UDDR0 ;
 int done (struct pxa25x_ep*,struct pxa25x_request*,int ) ;
 int ep0_idle (TYPE_4__*) ;
 int ep0start (TYPE_4__*,int,char*) ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;
 unsigned int write_packet (int *,struct pxa25x_request*,unsigned int) ;

__attribute__((used)) static int
write_ep0_fifo (struct pxa25x_ep *ep, struct pxa25x_request *req)
{
 unsigned count;
 int is_short;

 count = write_packet(&UDDR0, req, EP0_FIFO_SIZE);
 ep->dev->stats.write.bytes += count;


 is_short = (count != EP0_FIFO_SIZE);

 DBG(DBG_VERY_NOISY, "ep0in %d bytes %d left %p\n", count,
  req->req.length - req->req.actual, req);

 if (unlikely (is_short)) {
  if (ep->dev->req_pending)
   ep0start(ep->dev, UDCCS0_IPR, "short IN");
  else
   UDCCS0 = UDCCS0_IPR;

  count = req->req.length;
  done (ep, req, 0);
  ep0_idle(ep->dev);
  if (count >= EP0_FIFO_SIZE) {
   count = 100;
   do {
    if ((UDCCS0 & UDCCS0_OPR) != 0) {

     UDCCS0 = UDCCS0_OPR;
     break;
    }
    count--;
    udelay(1);
   } while (count);
  }


 } else if (ep->dev->req_pending)
  ep0start(ep->dev, 0, "IN");
 return is_short;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ length; scalar_t__ actual; scalar_t__ zero; } ;
struct pxa25x_request {TYPE_3__ req; } ;
struct TYPE_5__ {int name; } ;
struct pxa25x_ep {int* reg_udccs; unsigned int fifo_size; int bEndpointAddress; int queue; TYPE_2__ ep; int reg_uddr; TYPE_1__* desc; } ;
struct TYPE_4__ {int wMaxPacketSize; } ;


 int DBG (int ,char*,int ,unsigned int,char*,char*,scalar_t__,struct pxa25x_request*) ;
 int DBG_VERY_NOISY ;
 int UDCCS_BI_TFS ;
 int UDCCS_BI_TPC ;
 int UDCCS_BI_TSP ;
 int done (struct pxa25x_ep*,struct pxa25x_request*,int ) ;
 unsigned int le16_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ list_empty (int *) ;
 int pio_irq_disable (int ) ;
 int unlikely (int) ;
 unsigned int write_packet (int ,struct pxa25x_request*,unsigned int) ;

__attribute__((used)) static int
write_fifo (struct pxa25x_ep *ep, struct pxa25x_request *req)
{
 unsigned max;

 max = le16_to_cpu(ep->desc->wMaxPacketSize);
 do {
  unsigned count;
  int is_last, is_short;

  count = write_packet(ep->reg_uddr, req, max);


  if (unlikely (count != max))
   is_last = is_short = 1;
  else {
   if (likely(req->req.length != req->req.actual)
     || req->req.zero)
    is_last = 0;
   else
    is_last = 1;

   is_short = unlikely (max < ep->fifo_size);
  }

  DBG(DBG_VERY_NOISY, "wrote %s %d bytes%s%s %d left %p\n",
   ep->ep.name, count,
   is_last ? "/L" : "", is_short ? "/S" : "",
   req->req.length - req->req.actual, req);





  *ep->reg_udccs = UDCCS_BI_TPC;
  if (is_short)
   *ep->reg_udccs = UDCCS_BI_TSP;


  if (is_last) {
   done (ep, req, 0);
   if (list_empty(&ep->queue))
    pio_irq_disable (ep->bEndpointAddress);
   return 1;
  }





 } while (*ep->reg_udccs & UDCCS_BI_TFS);
 return 0;
}

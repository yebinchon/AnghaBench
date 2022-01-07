
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; unsigned int actual; } ;
struct qe_req {TYPE_1__ req; } ;
struct qe_frame {int dummy; } ;
struct qe_ep {int last; scalar_t__ sent; TYPE_2__* udc; struct qe_req* tx_req; struct qe_frame* txframe; } ;
struct TYPE_4__ {int dev; int ep0_state; } ;


 int NO_REQ ;
 int SETUP_STATUS ;
 int WAIT_FOR_SETUP ;
 int ZLP ;
 int dev_vdbg (int ,char*) ;
 int ep0_req_complete (TYPE_2__*,struct qe_req*) ;
 int frame_get_info (struct qe_frame*) ;
 int sendnulldata (struct qe_ep*,struct qe_frame*,int) ;

__attribute__((used)) static int ep0_txcomplete(struct qe_ep *ep, unsigned char restart)
{
 struct qe_req *tx_req = ((void*)0);
 struct qe_frame *frame = ep->txframe;

 if ((frame_get_info(frame) & (ZLP | NO_REQ)) == (ZLP | NO_REQ)) {
  if (!restart)
   ep->udc->ep0_state = WAIT_FOR_SETUP;
  else
   sendnulldata(ep, ep->txframe, SETUP_STATUS | NO_REQ);
  return 0;
 }

 tx_req = ep->tx_req;
 if (tx_req != ((void*)0)) {
  if (!restart) {
   int asent = ep->last;
   ep->sent += asent;
   ep->last -= asent;
  } else {
   ep->last = 0;
  }


  if ((ep->tx_req->req.length - ep->sent) <= 0) {
   ep->tx_req->req.actual = (unsigned int)ep->sent;
   ep0_req_complete(ep->udc, ep->tx_req);
   ep->tx_req = ((void*)0);
   ep->last = 0;
   ep->sent = 0;
  }
 } else {
  dev_vdbg(ep->udc->dev, "the ep0_controller have no req\n");
 }

 return 0;
}

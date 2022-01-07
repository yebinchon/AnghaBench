
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qe_ep {int data01; int txframe; TYPE_1__* udc; } ;
struct TYPE_2__ {int dev; } ;


 int FRAME_ERROR ;
 int PID_DATA0 ;
 int dev_vdbg (int ,char*) ;
 int ep0_txcomplete (struct qe_ep*,int) ;
 int frame_create_tx (struct qe_ep*,int ) ;
 int frame_get_info (int ) ;
 int frame_get_status (int ) ;
 int qe_ep_flushtxfifo (struct qe_ep*) ;

__attribute__((used)) static int ep0_txframe_handle(struct qe_ep *ep)
{

 if (frame_get_status(ep->txframe) & FRAME_ERROR) {
  qe_ep_flushtxfifo(ep);
  dev_vdbg(ep->udc->dev, "The EP0 transmit data have error!\n");
  if (frame_get_info(ep->txframe) & PID_DATA0)
   ep->data01 = 0;
  else
   ep->data01 = 1;

  ep0_txcomplete(ep, 1);
 } else
  ep0_txcomplete(ep, 0);

 frame_create_tx(ep, ep->txframe);
 return 0;
}

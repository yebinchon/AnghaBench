
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qe_req {int dummy; } ;
struct qe_ep {int txframe; scalar_t__ last; scalar_t__ sent; int * tx_req; } ;


 int frame_create_tx (struct qe_ep*,int ) ;
 int txcomplete (struct qe_ep*,int ) ;

__attribute__((used)) static int ep_req_send(struct qe_ep *ep, struct qe_req *req)
{
 int reval = 0;

 if (ep->tx_req == ((void*)0)) {
  ep->sent = 0;
  ep->last = 0;
  txcomplete(ep, 0);
  reval = frame_create_tx(ep, ep->txframe);
 }
 return reval;
}

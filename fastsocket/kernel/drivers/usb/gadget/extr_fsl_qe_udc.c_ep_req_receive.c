
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qe_req {int dummy; } ;
struct qe_ep {scalar_t__ state; scalar_t__ has_data; } ;


 scalar_t__ EP_STATE_NACK ;
 int ep_req_rx (struct qe_ep*,struct qe_req*) ;
 int qe_eprx_normal (struct qe_ep*) ;

__attribute__((used)) static int ep_req_receive(struct qe_ep *ep, struct qe_req *req)
{
 if (ep->state == EP_STATE_NACK) {
  if (ep->has_data <= 0) {

   qe_eprx_normal(ep);
  } else {

   ep_req_rx(ep, req);
  }
 }

 return 0;
}

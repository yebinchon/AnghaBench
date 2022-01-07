
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; } ;
struct qe_req {TYPE_1__ req; } ;
struct qe_frame {int dummy; } ;
struct qe_ep {scalar_t__ sent; struct qe_req* tx_req; } ;


 int ENODEV ;
 int qe_usb_senddata (struct qe_ep*,struct qe_frame*) ;
 int sendnulldata (struct qe_ep*,struct qe_frame*,int ) ;

__attribute__((used)) static int frame_create_tx(struct qe_ep *ep, struct qe_frame *frame)
{
 struct qe_req *req = ep->tx_req;
 int reval;

 if (req == ((void*)0))
  return -ENODEV;

 if ((req->req.length - ep->sent) > 0)
  reval = qe_usb_senddata(ep, frame);
 else
  reval = sendnulldata(ep, frame, 0);

 return reval;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qe_udc {int ep0_dir; int ep0_state; struct qe_ep* eps; } ;
struct qe_ep {int txframe; } ;


 int DATA_STATE_NEED_ZLP ;
 int NO_REQ ;
 int SETUP_STATUS ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int WAIT_FOR_OUT_STATUS ;
 int sendnulldata (struct qe_ep*,int ,int) ;

__attribute__((used)) static int ep0_prime_status(struct qe_udc *udc, int direction)
{

 struct qe_ep *ep = &udc->eps[0];

 if (direction == USB_DIR_IN) {
  udc->ep0_state = DATA_STATE_NEED_ZLP;
  udc->ep0_dir = USB_DIR_IN;
  sendnulldata(ep, ep->txframe, SETUP_STATUS | NO_REQ);
 } else {
  udc->ep0_dir = USB_DIR_OUT;
  udc->ep0_state = WAIT_FOR_OUT_STATUS;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qe_udc {TYPE_2__** ep_param; TYPE_1__* usb_regs; } ;
struct qe_ep {int epnum; int txbase; int n_txbd; int c_txbd; struct qe_udc* udc; } ;
struct TYPE_4__ {int tbcnt; int tstate; int tbase; int tbptr; } ;
struct TYPE_3__ {int usb_uscom; } ;


 int USB_CMD_EP_MASK ;
 int USB_CMD_FLUSH_FIFO ;
 int in_be16 (int *) ;
 int out_8 (int *,int) ;
 int out_be16 (int *,int ) ;
 int out_be32 (int *,int ) ;
 int qe_ep_cmd_restarttx (struct qe_ep*) ;
 int qe_ep_cmd_stoptx (struct qe_ep*) ;

__attribute__((used)) static int qe_ep_flushtxfifo(struct qe_ep *ep)
{
 struct qe_udc *udc = ep->udc;
 int i;

 i = (int)ep->epnum;

 qe_ep_cmd_stoptx(ep);
 out_8(&udc->usb_regs->usb_uscom,
  USB_CMD_FLUSH_FIFO | (USB_CMD_EP_MASK & (ep->epnum)));
 out_be16(&udc->ep_param[i]->tbptr, in_be16(&udc->ep_param[i]->tbase));
 out_be32(&udc->ep_param[i]->tstate, 0);
 out_be16(&udc->ep_param[i]->tbcnt, 0);

 ep->c_txbd = ep->txbase;
 ep->n_txbd = ep->txbase;
 qe_ep_cmd_restarttx(ep);
 return 0;
}

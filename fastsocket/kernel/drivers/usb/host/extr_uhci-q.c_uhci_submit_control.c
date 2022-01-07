
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct urb_priv {int dummy; } ;
struct urb {int transfer_buffer_length; int transfer_dma; unsigned long pipe; int setup_dma; TYPE_3__* dev; struct urb_priv* hcpriv; } ;
struct uhci_td {int status; int link; } ;
struct uhci_qh {scalar_t__ state; int skel; struct uhci_td* dummy_td; TYPE_2__* hep; } ;
struct uhci_hcd {int dummy; } ;
typedef int dma_addr_t ;
typedef int __le32 ;
struct TYPE_6__ {scalar_t__ speed; scalar_t__ state; } ;
struct TYPE_4__ {int wMaxPacketSize; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int ENOMEM ;
 int LINK_TO_TD (struct uhci_td*) ;
 unsigned long PIPE_DEVEP_MASK ;
 scalar_t__ QH_STATE_ACTIVE ;
 int SKEL_FS_CONTROL ;
 int SKEL_LS_CONTROL ;
 unsigned long TD_CTRL_ACTIVE ;
 unsigned long TD_CTRL_IOC ;
 unsigned long TD_CTRL_LS ;
 unsigned long TD_CTRL_SPD ;
 unsigned long TD_TOKEN_TOGGLE ;
 unsigned long USB_PID_IN ;
 unsigned long USB_PID_OUT ;
 unsigned long USB_PID_SETUP ;
 scalar_t__ USB_SPEED_LOW ;
 scalar_t__ USB_STATE_CONFIGURED ;
 int cpu_to_le32 (unsigned long) ;
 int le16_to_cpu (int ) ;
 int uhci_add_fsbr (struct uhci_hcd*,struct urb*) ;
 int uhci_add_td_to_urbp (struct uhci_td*,struct urb_priv*) ;
 struct uhci_td* uhci_alloc_td (struct uhci_hcd*) ;
 unsigned long uhci_explen (int) ;
 int uhci_fill_td (struct uhci_td*,unsigned long,unsigned long,int) ;
 unsigned long uhci_maxerr (int) ;
 int uhci_remove_td_from_urbp (struct uhci_td*) ;
 scalar_t__ usb_pipeout (unsigned long) ;
 int wmb () ;

__attribute__((used)) static int uhci_submit_control(struct uhci_hcd *uhci, struct urb *urb,
  struct uhci_qh *qh)
{
 struct uhci_td *td;
 unsigned long destination, status;
 int maxsze = le16_to_cpu(qh->hep->desc.wMaxPacketSize);
 int len = urb->transfer_buffer_length;
 dma_addr_t data = urb->transfer_dma;
 __le32 *plink;
 struct urb_priv *urbp = urb->hcpriv;
 int skel;


 destination = (urb->pipe & PIPE_DEVEP_MASK) | USB_PID_SETUP;


 status = uhci_maxerr(3);
 if (urb->dev->speed == USB_SPEED_LOW)
  status |= TD_CTRL_LS;




 td = qh->dummy_td;
 uhci_add_td_to_urbp(td, urbp);
 uhci_fill_td(td, status, destination | uhci_explen(8),
   urb->setup_dma);
 plink = &td->link;
 status |= TD_CTRL_ACTIVE;
 if (usb_pipeout(urb->pipe) || len == 0)
  destination ^= (USB_PID_SETUP ^ USB_PID_OUT);
 else {
  destination ^= (USB_PID_SETUP ^ USB_PID_IN);
  status |= TD_CTRL_SPD;
 }




 while (len > 0) {
  int pktsze = maxsze;

  if (len <= pktsze) {
   pktsze = len;
   status &= ~TD_CTRL_SPD;
  }

  td = uhci_alloc_td(uhci);
  if (!td)
   goto nomem;
  *plink = LINK_TO_TD(td);


  destination ^= TD_TOKEN_TOGGLE;

  uhci_add_td_to_urbp(td, urbp);
  uhci_fill_td(td, status, destination | uhci_explen(pktsze),
    data);
  plink = &td->link;

  data += pktsze;
  len -= pktsze;
 }




 td = uhci_alloc_td(uhci);
 if (!td)
  goto nomem;
 *plink = LINK_TO_TD(td);


 destination ^= (USB_PID_IN ^ USB_PID_OUT);
 destination |= TD_TOKEN_TOGGLE;

 uhci_add_td_to_urbp(td, urbp);
 uhci_fill_td(td, status | TD_CTRL_IOC,
   destination | uhci_explen(0), 0);
 plink = &td->link;




 td = uhci_alloc_td(uhci);
 if (!td)
  goto nomem;
 *plink = LINK_TO_TD(td);

 uhci_fill_td(td, 0, USB_PID_OUT | uhci_explen(0), 0);
 wmb();
 qh->dummy_td->status |= cpu_to_le32(TD_CTRL_ACTIVE);
 qh->dummy_td = td;





 if (urb->dev->speed == USB_SPEED_LOW ||
   urb->dev->state != USB_STATE_CONFIGURED)
  skel = SKEL_LS_CONTROL;
 else {
  skel = SKEL_FS_CONTROL;
  uhci_add_fsbr(uhci, urb);
 }
 if (qh->state != QH_STATE_ACTIVE)
  qh->skel = skel;
 return 0;

nomem:

 uhci_remove_td_from_urbp(qh->dummy_td);
 return -ENOMEM;
}

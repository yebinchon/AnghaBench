
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct urb_priv {int dummy; } ;
struct urb {int transfer_buffer_length; int transfer_dma; unsigned long pipe; int transfer_flags; TYPE_3__* dev; struct urb_priv* hcpriv; } ;
struct uhci_td {int status; int link; } ;
struct uhci_qh {struct uhci_td* dummy_td; TYPE_2__* hep; } ;
struct uhci_hcd {int dummy; } ;
typedef int dma_addr_t ;
typedef int __le32 ;
struct TYPE_7__ {scalar_t__ speed; } ;
struct TYPE_5__ {int wMaxPacketSize; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;


 int EINVAL ;
 int ENOMEM ;
 int LINK_TO_TD (struct uhci_td*) ;
 unsigned long PIPE_DEVEP_MASK ;
 unsigned long TD_CTRL_ACTIVE ;
 unsigned long TD_CTRL_IOC ;
 unsigned long TD_CTRL_LS ;
 unsigned long TD_CTRL_SPD ;
 unsigned int TD_TOKEN_TOGGLE_SHIFT ;
 int URB_SHORT_NOT_OK ;
 int URB_ZERO_PACKET ;
 unsigned long USB_PID_OUT ;
 scalar_t__ USB_SPEED_LOW ;
 int cpu_to_le32 (unsigned long) ;
 int le16_to_cpu (int ) ;
 int uhci_add_td_to_urbp (struct uhci_td*,struct urb_priv*) ;
 struct uhci_td* uhci_alloc_td (struct uhci_hcd*) ;
 unsigned long uhci_explen (int) ;
 int uhci_fill_td (struct uhci_td*,unsigned long,unsigned long,int) ;
 unsigned long uhci_maxerr (int) ;
 int uhci_remove_td_from_urbp (struct uhci_td*) ;
 unsigned int usb_gettoggle (TYPE_3__*,int ,scalar_t__) ;
 unsigned long usb_packetid (unsigned long) ;
 int usb_pipeendpoint (unsigned long) ;
 scalar_t__ usb_pipein (unsigned long) ;
 scalar_t__ usb_pipeout (unsigned long) ;
 int usb_settoggle (TYPE_3__*,int ,scalar_t__,unsigned int) ;
 int wmb () ;

__attribute__((used)) static int uhci_submit_common(struct uhci_hcd *uhci, struct urb *urb,
  struct uhci_qh *qh)
{
 struct uhci_td *td;
 unsigned long destination, status;
 int maxsze = le16_to_cpu(qh->hep->desc.wMaxPacketSize);
 int len = urb->transfer_buffer_length;
 dma_addr_t data = urb->transfer_dma;
 __le32 *plink;
 struct urb_priv *urbp = urb->hcpriv;
 unsigned int toggle;

 if (len < 0)
  return -EINVAL;


 destination = (urb->pipe & PIPE_DEVEP_MASK) | usb_packetid(urb->pipe);
 toggle = usb_gettoggle(urb->dev, usb_pipeendpoint(urb->pipe),
    usb_pipeout(urb->pipe));


 status = uhci_maxerr(3);
 if (urb->dev->speed == USB_SPEED_LOW)
  status |= TD_CTRL_LS;
 if (usb_pipein(urb->pipe))
  status |= TD_CTRL_SPD;




 plink = ((void*)0);
 td = qh->dummy_td;
 do {
  int pktsze = maxsze;

  if (len <= pktsze) {
   pktsze = len;
   if (!(urb->transfer_flags & URB_SHORT_NOT_OK))
    status &= ~TD_CTRL_SPD;
  }

  if (plink) {
   td = uhci_alloc_td(uhci);
   if (!td)
    goto nomem;
   *plink = LINK_TO_TD(td);
  }
  uhci_add_td_to_urbp(td, urbp);
  uhci_fill_td(td, status,
    destination | uhci_explen(pktsze) |
     (toggle << TD_TOKEN_TOGGLE_SHIFT),
    data);
  plink = &td->link;
  status |= TD_CTRL_ACTIVE;

  data += pktsze;
  len -= maxsze;
  toggle ^= 1;
 } while (len > 0);
 if ((urb->transfer_flags & URB_ZERO_PACKET) &&
   usb_pipeout(urb->pipe) && len == 0 &&
   urb->transfer_buffer_length > 0) {
  td = uhci_alloc_td(uhci);
  if (!td)
   goto nomem;
  *plink = LINK_TO_TD(td);

  uhci_add_td_to_urbp(td, urbp);
  uhci_fill_td(td, status,
    destination | uhci_explen(0) |
     (toggle << TD_TOKEN_TOGGLE_SHIFT),
    data);
  plink = &td->link;

  toggle ^= 1;
 }







 td->status |= cpu_to_le32(TD_CTRL_IOC);




 td = uhci_alloc_td(uhci);
 if (!td)
  goto nomem;
 *plink = LINK_TO_TD(td);

 uhci_fill_td(td, 0, USB_PID_OUT | uhci_explen(0), 0);
 wmb();
 qh->dummy_td->status |= cpu_to_le32(TD_CTRL_ACTIVE);
 qh->dummy_td = td;

 usb_settoggle(urb->dev, usb_pipeendpoint(urb->pipe),
   usb_pipeout(urb->pipe), toggle);
 return 0;

nomem:

 uhci_remove_td_from_urbp(qh->dummy_td);
 return -ENOMEM;
}

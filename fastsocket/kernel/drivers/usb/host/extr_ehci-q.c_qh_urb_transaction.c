
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct usb_ctrlrequest {int dummy; } ;
struct urb {int transfer_buffer_length; int setup_dma; int transfer_dma; int transfer_flags; int pipe; int dev; } ;
struct list_head {int dummy; } ;
struct ehci_qtd {int hw_token; int qtd_list; int qtd_dma; void* hw_next; struct urb* urb; int hw_alt_next; } ;
struct ehci_hcd {TYPE_2__* async; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_4__ {TYPE_1__* hw; } ;
struct TYPE_3__ {int hw_alt_next; } ;


 int EHCI_LIST_END (struct ehci_hcd*) ;
 int EHCI_TUNE_CERR ;
 int QTD_IOC ;
 void* QTD_NEXT (struct ehci_hcd*,int ) ;
 int QTD_STS_ACTIVE ;
 int QTD_TOGGLE ;
 int URB_NO_INTERRUPT ;
 int URB_SHORT_NOT_OK ;
 int URB_ZERO_PACKET ;
 int cpu_to_hc32 (struct ehci_hcd*,int ) ;
 struct ehci_qtd* ehci_qtd_alloc (struct ehci_hcd*,int ) ;
 scalar_t__ likely (int) ;
 int list_add_tail (int *,struct list_head*) ;
 int max_packet (int ) ;
 int qtd_fill (struct ehci_hcd*,struct ehci_qtd*,int,int,int,int) ;
 int qtd_list_free (struct ehci_hcd*,struct urb*,struct list_head*) ;
 scalar_t__ unlikely (int) ;
 int usb_maxpacket (int ,int ,int) ;
 scalar_t__ usb_pipebulk (int ) ;
 scalar_t__ usb_pipecontrol (int ) ;
 int usb_pipein (int ) ;

__attribute__((used)) static struct list_head *
qh_urb_transaction (
 struct ehci_hcd *ehci,
 struct urb *urb,
 struct list_head *head,
 gfp_t flags
) {
 struct ehci_qtd *qtd, *qtd_prev;
 dma_addr_t buf;
 int len, maxpacket;
 int is_input;
 u32 token;




 qtd = ehci_qtd_alloc (ehci, flags);
 if (unlikely (!qtd))
  return ((void*)0);
 list_add_tail (&qtd->qtd_list, head);
 qtd->urb = urb;

 token = QTD_STS_ACTIVE;
 token |= (EHCI_TUNE_CERR << 10);


 len = urb->transfer_buffer_length;
 is_input = usb_pipein (urb->pipe);
 if (usb_pipecontrol (urb->pipe)) {

  qtd_fill(ehci, qtd, urb->setup_dma,
    sizeof (struct usb_ctrlrequest),
    token | (2 << 8), 8);


  token ^= QTD_TOGGLE;
  qtd_prev = qtd;
  qtd = ehci_qtd_alloc (ehci, flags);
  if (unlikely (!qtd))
   goto cleanup;
  qtd->urb = urb;
  qtd_prev->hw_next = QTD_NEXT(ehci, qtd->qtd_dma);
  list_add_tail (&qtd->qtd_list, head);


  if (len == 0)
   token |= (1 << 8);
 }




 buf = urb->transfer_dma;

 if (is_input)
  token |= (1 << 8);


 maxpacket = max_packet(usb_maxpacket(urb->dev, urb->pipe, !is_input));






 for (;;) {
  int this_qtd_len;

  this_qtd_len = qtd_fill(ehci, qtd, buf, len, token, maxpacket);
  len -= this_qtd_len;
  buf += this_qtd_len;






  if (is_input)
   qtd->hw_alt_next = ehci->async->hw->hw_alt_next;


  if ((maxpacket & (this_qtd_len + (maxpacket - 1))) == 0)
   token ^= QTD_TOGGLE;

  if (likely (len <= 0))
   break;

  qtd_prev = qtd;
  qtd = ehci_qtd_alloc (ehci, flags);
  if (unlikely (!qtd))
   goto cleanup;
  qtd->urb = urb;
  qtd_prev->hw_next = QTD_NEXT(ehci, qtd->qtd_dma);
  list_add_tail (&qtd->qtd_list, head);
 }






 if (likely ((urb->transfer_flags & URB_SHORT_NOT_OK) == 0
    || usb_pipecontrol (urb->pipe)))
  qtd->hw_alt_next = EHCI_LIST_END(ehci);





 if (likely (urb->transfer_buffer_length != 0)) {
  int one_more = 0;

  if (usb_pipecontrol (urb->pipe)) {
   one_more = 1;
   token ^= 0x0100;
   token |= QTD_TOGGLE;
  } else if (usb_pipebulk (urb->pipe)
    && (urb->transfer_flags & URB_ZERO_PACKET)
    && !(urb->transfer_buffer_length % maxpacket)) {
   one_more = 1;
  }
  if (one_more) {
   qtd_prev = qtd;
   qtd = ehci_qtd_alloc (ehci, flags);
   if (unlikely (!qtd))
    goto cleanup;
   qtd->urb = urb;
   qtd_prev->hw_next = QTD_NEXT(ehci, qtd->qtd_dma);
   list_add_tail (&qtd->qtd_list, head);


   qtd_fill(ehci, qtd, 0, 0, token, 0);
  }
 }


 if (likely (!(urb->transfer_flags & URB_NO_INTERRUPT)))
  qtd->hw_token |= cpu_to_hc32(ehci, QTD_IOC);
 return head;

cleanup:
 qtd_list_free (ehci, urb, head);
 return ((void*)0);
}

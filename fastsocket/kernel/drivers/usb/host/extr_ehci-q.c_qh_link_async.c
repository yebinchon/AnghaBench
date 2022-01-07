
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {struct ehci_qh* qh; } ;
struct ehci_qh {scalar_t__ qh_state; scalar_t__ xacterrs; TYPE_3__* hw; TYPE_2__ qh_next; int clearing_tt; int qh_dma; } ;
struct ehci_hcd {TYPE_1__* regs; struct ehci_qh* async; } ;
typedef int __hc32 ;
struct TYPE_8__ {int state; } ;
struct TYPE_7__ {int hw_next; } ;
struct TYPE_5__ {int command; int status; } ;


 int CMD_ASE ;
 int CMD_RUN ;
 int HC_STATE_RUNNING ;
 int QH_NEXT (struct ehci_hcd*,int ) ;
 scalar_t__ QH_STATE_IDLE ;
 scalar_t__ QH_STATE_LINKED ;
 int STS_ASS ;
 int TIMER_ASYNC_OFF ;
 int WARN_ON (int) ;
 int ehci_readl (struct ehci_hcd*,int *) ;
 TYPE_4__* ehci_to_hcd (struct ehci_hcd*) ;
 int ehci_writel (struct ehci_hcd*,int,int *) ;
 int handshake (struct ehci_hcd*,int *,int ,int ,int) ;
 int qh_get (struct ehci_qh*) ;
 int qh_refresh (struct ehci_hcd*,struct ehci_qh*) ;
 int timer_action_done (struct ehci_hcd*,int ) ;
 scalar_t__ unlikely (int ) ;
 int wmb () ;

__attribute__((used)) static void qh_link_async (struct ehci_hcd *ehci, struct ehci_qh *qh)
{
 __hc32 dma = QH_NEXT(ehci, qh->qh_dma);
 struct ehci_qh *head;


 if (unlikely(qh->clearing_tt))
  return;

 WARN_ON(qh->qh_state != QH_STATE_IDLE);


 head = ehci->async;
 timer_action_done (ehci, TIMER_ASYNC_OFF);
 if (!head->qh_next.qh) {
  u32 cmd = ehci_readl(ehci, &ehci->regs->command);

  if (!(cmd & CMD_ASE)) {

   (void)handshake(ehci, &ehci->regs->status,
     STS_ASS, 0, 150);
   cmd |= CMD_ASE | CMD_RUN;
   ehci_writel(ehci, cmd, &ehci->regs->command);
   ehci_to_hcd(ehci)->state = HC_STATE_RUNNING;

  }
 }


 qh_refresh(ehci, qh);


 qh->qh_next = head->qh_next;
 qh->hw->hw_next = head->hw->hw_next;
 wmb ();

 head->qh_next.qh = qh;
 head->hw->hw_next = dma;

 qh_get(qh);
 qh->xacterrs = 0;
 qh->qh_state = QH_STATE_LINKED;

}

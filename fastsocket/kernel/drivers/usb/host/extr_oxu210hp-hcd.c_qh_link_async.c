
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct oxu_hcd {TYPE_1__* regs; struct ehci_qh* async; } ;
struct TYPE_5__ {struct ehci_qh* qh; } ;
struct ehci_qh {scalar_t__ qh_state; int hw_next; TYPE_2__ qh_next; int qh_dma; } ;
typedef int __le32 ;
struct TYPE_6__ {int state; } ;
struct TYPE_4__ {int command; int status; } ;


 int CMD_ASE ;
 int CMD_RUN ;
 int HC_STATE_RUNNING ;
 int QH_NEXT (int ) ;
 scalar_t__ QH_STATE_IDLE ;
 scalar_t__ QH_STATE_LINKED ;
 int STS_ASS ;
 int TIMER_ASYNC_OFF ;
 int handshake (struct oxu_hcd*,int *,int ,int ,int) ;
 TYPE_3__* oxu_to_hcd (struct oxu_hcd*) ;
 int qh_refresh (struct oxu_hcd*,struct ehci_qh*) ;
 int readl (int *) ;
 int timer_action_done (struct oxu_hcd*,int ) ;
 int wmb () ;
 int writel (int,int *) ;

__attribute__((used)) static void qh_link_async(struct oxu_hcd *oxu, struct ehci_qh *qh)
{
 __le32 dma = QH_NEXT(qh->qh_dma);
 struct ehci_qh *head;


 head = oxu->async;
 timer_action_done(oxu, TIMER_ASYNC_OFF);
 if (!head->qh_next.qh) {
  u32 cmd = readl(&oxu->regs->command);

  if (!(cmd & CMD_ASE)) {

   (void)handshake(oxu, &oxu->regs->status,
     STS_ASS, 0, 150);
   cmd |= CMD_ASE | CMD_RUN;
   writel(cmd, &oxu->regs->command);
   oxu_to_hcd(oxu)->state = HC_STATE_RUNNING;

  }
 }


 if (qh->qh_state == QH_STATE_IDLE)
  qh_refresh(oxu, qh);


 qh->qh_next = head->qh_next;
 qh->hw_next = head->hw_next;
 wmb();

 head->qh_next.qh = qh;
 head->hw_next = dma;

 qh->qh_state = QH_STATE_LINKED;

}

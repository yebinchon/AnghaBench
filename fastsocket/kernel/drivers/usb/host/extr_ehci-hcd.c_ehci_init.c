
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct usb_hcd {int dummy; } ;
struct ehci_qh_hw {int hw_alt_next; int hw_qtd_next; void* hw_token; void* hw_info1; int hw_next; } ;
struct TYPE_10__ {unsigned long data; int function; } ;
struct ehci_hcd {int need_io_watchdog; int periodic_size; int i_thresh; int next_uframe; int clock_frame; int has_ppcd; int has_lpm; int command; TYPE_4__* async; int * reclaim; TYPE_1__* caps; int cached_sitd_list; int cached_itd_list; TYPE_5__ iaa_watchdog; TYPE_5__ watchdog; int lock; } ;
struct TYPE_7__ {int * qh; } ;
struct TYPE_9__ {TYPE_3__* dummy; int qh_state; int qh_dma; struct ehci_qh_hw* hw; TYPE_2__ qh_next; } ;
struct TYPE_8__ {int qtd_dma; } ;
struct TYPE_6__ {int hcc_params; } ;


 int BUG () ;
 int CMD_PARK ;
 int CMD_PPCEE ;
 int DEFAULT_I_TDPS ;
 int EHCI_LIST_END (struct ehci_hcd*) ;
 int EHCI_TUNE_FLS ;
 int GFP_KERNEL ;
 scalar_t__ HCC_CANPARK (int) ;
 scalar_t__ HCC_ISOC_CACHE (int) ;
 int HCC_ISOC_THRES (int) ;
 scalar_t__ HCC_LPM (int) ;
 scalar_t__ HCC_PER_PORT_CHANGE_EVENT (int) ;
 scalar_t__ HCC_PGM_FRAMELISTLEN (int) ;
 int INIT_LIST_HEAD (int *) ;
 int QH_HEAD ;
 int QH_NEXT (struct ehci_hcd*,int ) ;
 int QH_STATE_LINKED ;
 int QTD_NEXT (struct ehci_hcd*,int ) ;
 int QTD_STS_HALT ;
 void* cpu_to_hc32 (struct ehci_hcd*,int ) ;
 int ehci_dbg (struct ehci_hcd*,char*,...) ;
 int ehci_iaa_watchdog ;
 int ehci_mem_init (struct ehci_hcd*,int ) ;
 int ehci_readl (struct ehci_hcd*,int *) ;
 int ehci_watchdog ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int hird ;
 int init_timer (TYPE_5__*) ;
 int log2_irq_thresh ;
 int min (int,unsigned int) ;
 int park ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ehci_init(struct usb_hcd *hcd)
{
 struct ehci_hcd *ehci = hcd_to_ehci(hcd);
 u32 temp;
 int retval;
 u32 hcc_params;
 struct ehci_qh_hw *hw;

 spin_lock_init(&ehci->lock);




 ehci->need_io_watchdog = 1;
 init_timer(&ehci->watchdog);
 ehci->watchdog.function = ehci_watchdog;
 ehci->watchdog.data = (unsigned long) ehci;

 init_timer(&ehci->iaa_watchdog);
 ehci->iaa_watchdog.function = ehci_iaa_watchdog;
 ehci->iaa_watchdog.data = (unsigned long) ehci;





 ehci->periodic_size = DEFAULT_I_TDPS;
 INIT_LIST_HEAD(&ehci->cached_itd_list);
 INIT_LIST_HEAD(&ehci->cached_sitd_list);
 if ((retval = ehci_mem_init(ehci, GFP_KERNEL)) < 0)
  return retval;


 hcc_params = ehci_readl(ehci, &ehci->caps->hcc_params);
 if (HCC_ISOC_CACHE(hcc_params))
  ehci->i_thresh = 8;
 else
  ehci->i_thresh = 2 + HCC_ISOC_THRES(hcc_params);

 ehci->reclaim = ((void*)0);
 ehci->next_uframe = -1;
 ehci->clock_frame = -1;
 ehci->async->qh_next.qh = ((void*)0);
 hw = ehci->async->hw;
 hw->hw_next = QH_NEXT(ehci, ehci->async->qh_dma);
 hw->hw_info1 = cpu_to_hc32(ehci, QH_HEAD);
 hw->hw_token = cpu_to_hc32(ehci, QTD_STS_HALT);
 hw->hw_qtd_next = EHCI_LIST_END(ehci);
 ehci->async->qh_state = QH_STATE_LINKED;
 hw->hw_alt_next = QTD_NEXT(ehci, ehci->async->dummy->qtd_dma);


 if (log2_irq_thresh < 0 || log2_irq_thresh > 6)
  log2_irq_thresh = 0;
 temp = 1 << (16 + log2_irq_thresh);
 if (HCC_PER_PORT_CHANGE_EVENT(hcc_params)) {
  ehci->has_ppcd = 1;
  ehci_dbg(ehci, "enable per-port change event\n");
  temp |= CMD_PPCEE;
 }
 if (HCC_CANPARK(hcc_params)) {







  if (park) {
   park = min(park, (unsigned) 3);
   temp |= CMD_PARK;
   temp |= park << 8;
  }
  ehci_dbg(ehci, "park %d\n", park);
 }
 if (HCC_PGM_FRAMELISTLEN(hcc_params)) {

  temp &= ~(3 << 2);
  temp |= (EHCI_TUNE_FLS << 2);
  switch (EHCI_TUNE_FLS) {
  case 0: ehci->periodic_size = 1024; break;
  case 1: ehci->periodic_size = 512; break;
  case 2: ehci->periodic_size = 256; break;
  default: BUG();
  }
 }
 if (HCC_LPM(hcc_params)) {

  ehci_dbg(ehci, "support lpm\n");
  ehci->has_lpm = 1;
  if (hird > 0xf) {
   ehci_dbg(ehci, "hird %d invalid, use default 0",
   hird);
   hird = 0;
  }
  temp |= hird << 24;
 }
 ehci->command = temp;

 return 0;
}

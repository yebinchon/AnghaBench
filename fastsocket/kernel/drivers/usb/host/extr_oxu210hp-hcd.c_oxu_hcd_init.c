
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
struct TYPE_10__ {unsigned long data; int function; } ;
struct oxu_hcd {int i_thresh; int next_uframe; int command; TYPE_4__* async; scalar_t__ reclaim_ready; int * reclaim; TYPE_1__* caps; int periodic_size; TYPE_5__ watchdog; int lock; } ;
struct TYPE_7__ {int * qh; } ;
struct TYPE_9__ {TYPE_3__* dummy; int hw_alt_next; int qh_state; int hw_qtd_next; void* hw_token; void* hw_info1; int qh_dma; int hw_next; TYPE_2__ qh_next; } ;
struct TYPE_8__ {int qtd_dma; } ;
struct TYPE_6__ {int hcc_params; } ;


 int CMD_PARK ;
 int DEFAULT_I_TDPS ;
 int EHCI_LIST_END ;
 int EHCI_TUNE_FLS ;
 int GFP_KERNEL ;
 scalar_t__ HCC_CANPARK (int) ;
 scalar_t__ HCC_ISOC_CACHE (int) ;
 int HCC_ISOC_THRES (int) ;
 scalar_t__ HCC_PGM_FRAMELISTLEN (int) ;
 int QH_HEAD ;
 int QH_NEXT (int ) ;
 int QH_STATE_LINKED ;
 int QTD_NEXT (int ) ;
 int QTD_STS_HALT ;
 void* cpu_to_le32 (int ) ;
 int ehci_mem_init (struct oxu_hcd*,int ) ;
 struct oxu_hcd* hcd_to_oxu (struct usb_hcd*) ;
 int init_timer (TYPE_5__*) ;
 int log2_irq_thresh ;
 int min (int,unsigned int) ;
 int oxu_dbg (struct oxu_hcd*,char*,int) ;
 int oxu_watchdog ;
 int park ;
 int readl (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int oxu_hcd_init(struct usb_hcd *hcd)
{
 struct oxu_hcd *oxu = hcd_to_oxu(hcd);
 u32 temp;
 int retval;
 u32 hcc_params;

 spin_lock_init(&oxu->lock);

 init_timer(&oxu->watchdog);
 oxu->watchdog.function = oxu_watchdog;
 oxu->watchdog.data = (unsigned long) oxu;





 oxu->periodic_size = DEFAULT_I_TDPS;
 retval = ehci_mem_init(oxu, GFP_KERNEL);
 if (retval < 0)
  return retval;


 hcc_params = readl(&oxu->caps->hcc_params);
 if (HCC_ISOC_CACHE(hcc_params))
  oxu->i_thresh = 8;
 else
  oxu->i_thresh = 2 + HCC_ISOC_THRES(hcc_params);

 oxu->reclaim = ((void*)0);
 oxu->reclaim_ready = 0;
 oxu->next_uframe = -1;
 oxu->async->qh_next.qh = ((void*)0);
 oxu->async->hw_next = QH_NEXT(oxu->async->qh_dma);
 oxu->async->hw_info1 = cpu_to_le32(QH_HEAD);
 oxu->async->hw_token = cpu_to_le32(QTD_STS_HALT);
 oxu->async->hw_qtd_next = EHCI_LIST_END;
 oxu->async->qh_state = QH_STATE_LINKED;
 oxu->async->hw_alt_next = QTD_NEXT(oxu->async->dummy->qtd_dma);


 if (log2_irq_thresh < 0 || log2_irq_thresh > 6)
  log2_irq_thresh = 0;
 temp = 1 << (16 + log2_irq_thresh);
 if (HCC_CANPARK(hcc_params)) {







  if (park) {
   park = min(park, (unsigned) 3);
   temp |= CMD_PARK;
   temp |= park << 8;
  }
  oxu_dbg(oxu, "park %d\n", park);
 }
 if (HCC_PGM_FRAMELISTLEN(hcc_params)) {

  temp &= ~(3 << 2);
  temp |= (EHCI_TUNE_FLS << 2);
 }
 oxu->command = temp;

 return 0;
}

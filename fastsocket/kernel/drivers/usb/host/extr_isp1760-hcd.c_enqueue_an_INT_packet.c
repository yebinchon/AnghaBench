
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_hcd {scalar_t__ regs; } ;
struct ptd {int dummy; } ;
struct isp1760_qtd {int urb; int length; } ;
struct isp1760_qh {int dummy; } ;
struct isp1760_hcd {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ HC_BUFFER_STATUS_REG ;
 scalar_t__ HC_INT_IRQ_MASK_OR_REG ;
 scalar_t__ HC_INT_PTD_SKIPMAP_REG ;
 int INT_BUFFER ;
 int INT_REGS_OFFSET ;
 int __ffs (int) ;
 int alloc_mem (struct isp1760_hcd*,int ) ;
 int enqueue_one_int_qtd (int,int,struct isp1760_hcd*,struct isp1760_qh*,int ,int,struct isp1760_qtd*) ;
 struct isp1760_hcd* hcd_to_priv (struct usb_hcd*) ;
 int isp1760_readl (scalar_t__) ;
 int isp1760_writel (int,scalar_t__) ;
 int ndelay (int) ;

__attribute__((used)) static void enqueue_an_INT_packet(struct usb_hcd *hcd, struct isp1760_qh *qh,
      struct isp1760_qtd *qtd)
{
 struct isp1760_hcd *priv = hcd_to_priv(hcd);
 u32 skip_map, or_map;
 u32 queue_entry;
 u32 slot;
 u32 int_regs, payload;
 u32 buffstatus;







 ndelay(195);
 skip_map = isp1760_readl(hcd->regs + HC_INT_PTD_SKIPMAP_REG);

 BUG_ON(!skip_map);
 slot = __ffs(skip_map);
 queue_entry = 1 << slot;

 int_regs = INT_REGS_OFFSET + slot * sizeof(struct ptd);

 payload = alloc_mem(priv, qtd->length);

 enqueue_one_int_qtd(int_regs, payload, priv, qh, qtd->urb, slot, qtd);

 or_map = isp1760_readl(hcd->regs + HC_INT_IRQ_MASK_OR_REG);
 or_map |= queue_entry;
 isp1760_writel(or_map, hcd->regs + HC_INT_IRQ_MASK_OR_REG);

 skip_map &= ~queue_entry;
 isp1760_writel(skip_map, hcd->regs + HC_INT_PTD_SKIPMAP_REG);

 buffstatus = isp1760_readl(hcd->regs + HC_BUFFER_STATUS_REG);
 buffstatus |= INT_BUFFER;
 isp1760_writel(buffstatus, hcd->regs + HC_BUFFER_STATUS_REG);
}

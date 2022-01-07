
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct usba_udc {int lock; } ;
struct TYPE_2__ {unsigned long name; unsigned long maxpacket; } ;
struct usba_ep {int index; unsigned long fifo_size; int is_isoc; int is_in; int nr_banks; scalar_t__ can_dma; TYPE_1__ ep; struct usb_endpoint_descriptor const* desc; struct usba_udc* udc; int can_isoc; } ;
struct usb_ep {int dummy; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; scalar_t__ bDescriptorType; int wMaxPacketSize; } ;


 int BK_NUMBER ;
 int CFG ;
 int CTL_ENB ;
 int DBG (int ,char*,...) ;
 int DBG_ERR ;
 int DBG_GADGET ;
 int DBG_HW ;
 int DMA_INT ;
 int EBUSY ;
 int EINVAL ;
 int EPT_INT ;
 int EPT_SIZE ;
 int EPT_TYPE ;
 int INT_ENB ;
 int NB_TRANS ;
 unsigned long USBA_AUTO_VALID ;
 unsigned long USBA_BF (int ,int) ;
 int USBA_BK_NUMBER_DOUBLE ;
 int USBA_BK_NUMBER_ONE ;
 int USBA_BK_NUMBER_TRIPLE ;
 unsigned long USBA_EPT_DIR_IN ;
 unsigned long USBA_EPT_ENABLE ;
 int USBA_EPT_SIZE_8 ;
 int USBA_EPT_TYPE_BULK ;
 int USBA_EPT_TYPE_CONTROL ;
 int USBA_EPT_TYPE_INT ;
 int USBA_EPT_TYPE_ISO ;
 unsigned long USBA_INTDIS_DMA ;
 scalar_t__ USB_DT_ENDPOINT ;
 int USB_ENDPOINT_NUMBER_MASK ;




 int fls (unsigned long) ;
 int le16_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct usba_ep* to_usba_ep (struct usb_ep*) ;
 scalar_t__ usb_endpoint_dir_in (struct usb_endpoint_descriptor const*) ;
 int usb_endpoint_type (struct usb_endpoint_descriptor const*) ;
 scalar_t__ usba_ep_readl (struct usba_ep*,int ) ;
 int usba_ep_writel (struct usba_ep*,int ,unsigned long) ;
 unsigned long usba_readl (struct usba_udc*,int ) ;
 int usba_writel (struct usba_udc*,int ,unsigned long) ;

__attribute__((used)) static int
usba_ep_enable(struct usb_ep *_ep, const struct usb_endpoint_descriptor *desc)
{
 struct usba_ep *ep = to_usba_ep(_ep);
 struct usba_udc *udc = ep->udc;
 unsigned long flags, ept_cfg, maxpacket;
 unsigned int nr_trans;

 DBG(DBG_GADGET, "%s: ep_enable: desc=%p\n", ep->ep.name, desc);

 maxpacket = le16_to_cpu(desc->wMaxPacketSize) & 0x7ff;

 if (((desc->bEndpointAddress & USB_ENDPOINT_NUMBER_MASK) != ep->index)
   || ep->index == 0
   || desc->bDescriptorType != USB_DT_ENDPOINT
   || maxpacket == 0
   || maxpacket > ep->fifo_size) {
  DBG(DBG_ERR, "ep_enable: Invalid argument");
  return -EINVAL;
 }

 ep->is_isoc = 0;
 ep->is_in = 0;

 if (maxpacket <= 8)
  ept_cfg = USBA_BF(EPT_SIZE, USBA_EPT_SIZE_8);
 else

  ept_cfg = USBA_BF(EPT_SIZE, fls(maxpacket - 1) - 3);

 DBG(DBG_HW, "%s: EPT_SIZE = %lu (maxpacket = %lu)\n",
   ep->ep.name, ept_cfg, maxpacket);

 if (usb_endpoint_dir_in(desc)) {
  ep->is_in = 1;
  ept_cfg |= USBA_EPT_DIR_IN;
 }

 switch (usb_endpoint_type(desc)) {
 case 130:
  ept_cfg |= USBA_BF(EPT_TYPE, USBA_EPT_TYPE_CONTROL);
  ept_cfg |= USBA_BF(BK_NUMBER, USBA_BK_NUMBER_ONE);
  break;
 case 128:
  if (!ep->can_isoc) {
   DBG(DBG_ERR, "ep_enable: %s is not isoc capable\n",
     ep->ep.name);
   return -EINVAL;
  }





  nr_trans = ((le16_to_cpu(desc->wMaxPacketSize) >> 11) & 3) + 1;
  if (nr_trans > 3)
   return -EINVAL;

  ep->is_isoc = 1;
  ept_cfg |= USBA_BF(EPT_TYPE, USBA_EPT_TYPE_ISO);




  if (nr_trans > 1 && ep->nr_banks == 3)
   ept_cfg |= USBA_BF(BK_NUMBER, USBA_BK_NUMBER_TRIPLE);
  else
   ept_cfg |= USBA_BF(BK_NUMBER, USBA_BK_NUMBER_DOUBLE);
  ept_cfg |= USBA_BF(NB_TRANS, nr_trans);
  break;
 case 131:
  ept_cfg |= USBA_BF(EPT_TYPE, USBA_EPT_TYPE_BULK);
  ept_cfg |= USBA_BF(BK_NUMBER, USBA_BK_NUMBER_DOUBLE);
  break;
 case 129:
  ept_cfg |= USBA_BF(EPT_TYPE, USBA_EPT_TYPE_INT);
  ept_cfg |= USBA_BF(BK_NUMBER, USBA_BK_NUMBER_DOUBLE);
  break;
 }

 spin_lock_irqsave(&ep->udc->lock, flags);

 if (ep->desc) {
  spin_unlock_irqrestore(&ep->udc->lock, flags);
  DBG(DBG_ERR, "ep%d already enabled\n", ep->index);
  return -EBUSY;
 }

 ep->desc = desc;
 ep->ep.maxpacket = maxpacket;

 usba_ep_writel(ep, CFG, ept_cfg);
 usba_ep_writel(ep, CTL_ENB, USBA_EPT_ENABLE);

 if (ep->can_dma) {
  u32 ctrl;

  usba_writel(udc, INT_ENB,
    (usba_readl(udc, INT_ENB)
     | USBA_BF(EPT_INT, 1 << ep->index)
     | USBA_BF(DMA_INT, 1 << ep->index)));
  ctrl = USBA_AUTO_VALID | USBA_INTDIS_DMA;
  usba_ep_writel(ep, CTL_ENB, ctrl);
 } else {
  usba_writel(udc, INT_ENB,
    (usba_readl(udc, INT_ENB)
     | USBA_BF(EPT_INT, 1 << ep->index)));
 }

 spin_unlock_irqrestore(&udc->lock, flags);

 DBG(DBG_HW, "EPT_CFG%d after init: %#08lx\n", ep->index,
   (unsigned long)usba_ep_readl(ep, CFG));
 DBG(DBG_HW, "INT_ENB after init: %#08lx\n",
   (unsigned long)usba_readl(udc, INT_ENB));

 return 0;
}

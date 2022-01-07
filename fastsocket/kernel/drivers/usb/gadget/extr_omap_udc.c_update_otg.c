
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int b_hnp_enable; int a_hnp_support; int a_alt_hnp_support; } ;
struct omap_udc {TYPE_1__ gadget; } ;


 int OTG_B_BUSREQ ;
 int OTG_B_HNPEN ;
 int OTG_CTRL ;
 int OTG_ID ;
 int OTG_PULLUP ;
 int UDC_A_ALT_HNP_SUPPORT ;
 int UDC_A_HNP_SUPPORT ;
 int UDC_B_HNP_ENABLE ;
 int UDC_DEVSTAT ;
 int gadget_is_otg (TYPE_1__*) ;
 int omap_readl (int ) ;
 int omap_readw (int ) ;
 int omap_writel (int,int ) ;

__attribute__((used)) static void update_otg(struct omap_udc *udc)
{
 u16 devstat;

 if (!gadget_is_otg(&udc->gadget))
  return;

 if (omap_readl(OTG_CTRL) & OTG_ID)
  devstat = omap_readw(UDC_DEVSTAT);
 else
  devstat = 0;

 udc->gadget.b_hnp_enable = !!(devstat & UDC_B_HNP_ENABLE);
 udc->gadget.a_hnp_support = !!(devstat & UDC_A_HNP_SUPPORT);
 udc->gadget.a_alt_hnp_support = !!(devstat & UDC_A_ALT_HNP_SUPPORT);




 if (udc->gadget.b_hnp_enable) {
  u32 l;

  l = omap_readl(OTG_CTRL);
  l |= OTG_B_HNPEN | OTG_B_BUSREQ;
  l &= ~OTG_PULLUP;
  omap_writel(l, OTG_CTRL);
 }
}

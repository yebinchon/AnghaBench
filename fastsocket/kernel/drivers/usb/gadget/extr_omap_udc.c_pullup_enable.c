
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct omap_udc {int gadget; } ;


 int OTG_BSESSVLD ;
 int OTG_CTRL ;
 int UDC_DS_CHG_IE ;
 int UDC_IRQ_EN ;
 int UDC_PULLUP_EN ;
 int UDC_SYSCON1 ;
 int cpu_is_omap15xx () ;
 int gadget_is_otg (int *) ;
 int omap_readl (int ) ;
 int omap_readw (int ) ;
 int omap_writel (int ,int ) ;
 int omap_writew (int ,int ) ;

__attribute__((used)) static void pullup_enable(struct omap_udc *udc)
{
 u16 w;

 w = omap_readw(UDC_SYSCON1);
 w |= UDC_PULLUP_EN;
 omap_writew(w, UDC_SYSCON1);
 if (!gadget_is_otg(&udc->gadget) && !cpu_is_omap15xx()) {
  u32 l;

  l = omap_readl(OTG_CTRL);
  l |= OTG_BSESSVLD;
  omap_writel(l, OTG_CTRL);
 }
 omap_writew(UDC_DS_CHG_IE, UDC_IRQ_EN);
}

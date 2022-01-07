
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum lcdc_load_mode { ____Placeholder_lcdc_load_mode } lcdc_load_mode ;


 int BUG () ;
 int OMAP_LCDC_CONTROL ;



 int omap_readl (int ) ;
 int omap_writel (int,int ) ;

__attribute__((used)) static void set_load_mode(enum lcdc_load_mode mode)
{
 u32 l;

 l = omap_readl(OMAP_LCDC_CONTROL);
 l &= ~(3 << 20);
 switch (mode) {
 case 129:
  l |= 1 << 20;
  break;
 case 130:
  l |= 2 << 20;
  break;
 case 128:
  break;
 default:
  BUG();
 }
 omap_writel(l, OMAP_LCDC_CONTROL);
}

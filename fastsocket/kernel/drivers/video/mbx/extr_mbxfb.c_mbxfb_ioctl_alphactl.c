
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbxfb_alphaCtl {int overlay_colorkey_mode; int overlay_blend_mode; int graphics_colorkey_mode; int graphics_blend_mode; int graphics_colorkey_mask; int overlay_colorkey_mask; int graphics_colorkey; int graphics_global_alpha; int overlay_colorkey; int overlay_global_alpha; } ;


 int EINVAL ;
 unsigned long FMsk (int ) ;
 int GBBASE ;
 int GDRCTRL ;
 int GDRCTRL_COLKEYM ;
 int GSCADR ;
 unsigned long GSCADR_BLEND_GLOB ;
 int GSCADR_BLEND_M ;
 unsigned long GSCADR_BLEND_NONE ;
 unsigned long GSCADR_BLEND_PIX ;
 unsigned long GSCADR_COLKEYSRC ;
 unsigned long GSCADR_COLKEY_EN ;
 unsigned long Gbbase_Colkey (int ) ;
 unsigned long Gbbase_Glalpha (int ) ;
 unsigned long Gdrctrl_Colkeym (int ) ;






 int VBBASE ;
 int VCMSK ;
 int VCMSK_COLKEY_M ;
 int VSCADR ;
 unsigned long VSCADR_BLEND_GLOB ;
 int VSCADR_BLEND_M ;
 unsigned long VSCADR_BLEND_NONE ;
 unsigned long VSCADR_BLEND_PIX ;
 unsigned long VSCADR_COLKEYSRC ;
 unsigned long VSCADR_COLKEY_EN ;
 unsigned long Vbbase_Colkey (int ) ;
 unsigned long Vbbase_Glalpha (int ) ;
 unsigned long Vcmsk_colkey_m (int ) ;
 unsigned long readl (int ) ;
 int write_reg_dly (unsigned long,int ) ;

__attribute__((used)) static int mbxfb_ioctl_alphactl(struct mbxfb_alphaCtl *alpha)
{
 unsigned long vscadr, vbbase, vcmsk;
 unsigned long gscadr, gbbase, gdrctrl;

 vbbase = Vbbase_Glalpha(alpha->overlay_global_alpha) |
    Vbbase_Colkey(alpha->overlay_colorkey);

 gbbase = Gbbase_Glalpha(alpha->graphics_global_alpha) |
    Gbbase_Colkey(alpha->graphics_colorkey);

 vcmsk = readl(VCMSK);
 vcmsk &= ~(FMsk(VCMSK_COLKEY_M));
 vcmsk |= Vcmsk_colkey_m(alpha->overlay_colorkey_mask);

 gdrctrl = readl(GDRCTRL);
 gdrctrl &= ~(FMsk(GDRCTRL_COLKEYM));
 gdrctrl |= Gdrctrl_Colkeym(alpha->graphics_colorkey_mask);

 vscadr = readl(VSCADR);
 vscadr &= ~(FMsk(VSCADR_BLEND_M) | VSCADR_COLKEYSRC | VSCADR_COLKEY_EN);

 gscadr = readl(GSCADR);
 gscadr &= ~(FMsk(GSCADR_BLEND_M) | GSCADR_COLKEY_EN | GSCADR_COLKEYSRC);

 switch (alpha->overlay_colorkey_mode) {
 case 129:
  break;
 case 128:
  vscadr |= VSCADR_COLKEY_EN;
  break;
 case 130:
  vscadr |= VSCADR_COLKEY_EN | VSCADR_COLKEYSRC;
  break;
 default:
  return -EINVAL;
 }

 switch (alpha->overlay_blend_mode) {
 case 132:
  vscadr |= VSCADR_BLEND_NONE;
  break;
 case 133:
  vscadr |= VSCADR_BLEND_GLOB;
  break;
 case 131:
  vscadr |= VSCADR_BLEND_PIX;
  break;
 default:
  return -EINVAL;
 }

 switch (alpha->graphics_colorkey_mode) {
 case 129:
  break;
 case 128:
  gscadr |= GSCADR_COLKEY_EN;
  break;
 case 130:
  gscadr |= GSCADR_COLKEY_EN | GSCADR_COLKEYSRC;
  break;
 default:
  return -EINVAL;
 }

 switch (alpha->graphics_blend_mode) {
 case 132:
  gscadr |= GSCADR_BLEND_NONE;
  break;
 case 133:
  gscadr |= GSCADR_BLEND_GLOB;
  break;
 case 131:
  gscadr |= GSCADR_BLEND_PIX;
  break;
 default:
  return -EINVAL;
 }

 write_reg_dly(vbbase, VBBASE);
 write_reg_dly(gbbase, GBBASE);
 write_reg_dly(vcmsk, VCMSK);
 write_reg_dly(gdrctrl, GDRCTRL);
 write_reg_dly(gscadr, GSCADR);
 write_reg_dly(vscadr, VSCADR);

 return 0;
}

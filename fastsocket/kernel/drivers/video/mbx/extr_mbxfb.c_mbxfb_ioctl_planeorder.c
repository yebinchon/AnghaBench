
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbxfb_planeorder {int bottom; int top; } ;


 int EINVAL ;
 unsigned long FMsk (int ) ;
 int GSCADR ;
 unsigned long GSCADR_BLEND_GFX ;
 int GSCADR_BLEND_POS ;
 unsigned long GSCADR_BLEND_VID ;


 int VSCADR ;
 unsigned long VSCADR_BLEND_GFX ;
 int VSCADR_BLEND_POS ;
 unsigned long readl (int ) ;
 int write_reg_dly (unsigned long,int ) ;

__attribute__((used)) static int mbxfb_ioctl_planeorder(struct mbxfb_planeorder *porder)
{
 unsigned long gscadr, vscadr;

 if (porder->bottom == porder->top)
  return -EINVAL;

 gscadr = readl(GSCADR);
 vscadr = readl(VSCADR);

 gscadr &= ~(FMsk(GSCADR_BLEND_POS));
 vscadr &= ~(FMsk(VSCADR_BLEND_POS));

 switch (porder->bottom) {
 case 129:
  gscadr |= GSCADR_BLEND_GFX;
  break;
 case 128:
  vscadr |= VSCADR_BLEND_GFX;
  break;
 default:
  return -EINVAL;
 }

 switch (porder->top) {
 case 129:
  gscadr |= GSCADR_BLEND_VID;
  break;
 case 128:
  vscadr |= GSCADR_BLEND_VID;
  break;
 default:
  return -EINVAL;
 }

 write_reg_dly(vscadr, VSCADR);
 write_reg_dly(gscadr, GSCADR);

 return 0;

}

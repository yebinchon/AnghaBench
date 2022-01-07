
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb862xxfb_par {int dummy; } ;
struct fb_info {int dev; struct mb862xxfb_par* par; } ;







 unsigned long GC_DCM01_DEN ;
 int GC_DCM1 ;
 int dev_dbg (int ,char*,int) ;
 int disp ;
 unsigned long inreg (int ,int ) ;
 int outreg (int ,int ,unsigned long) ;

__attribute__((used)) static int mb862xxfb_blank(int mode, struct fb_info *fbi)
{
 struct mb862xxfb_par *par = fbi->par;
 unsigned long reg;

 dev_dbg(fbi->dev, "blank mode=%d\n", mode);

 switch (mode) {
 case 130:
  reg = inreg(disp, GC_DCM1);
  reg &= ~GC_DCM01_DEN;
  outreg(disp, GC_DCM1, reg);
  break;
 case 129:
  reg = inreg(disp, GC_DCM1);
  reg |= GC_DCM01_DEN;
  outreg(disp, GC_DCM1, reg);
  break;
 case 131:
 case 128:
 case 132:
 default:
  return 1;
 }
 return 0;
}

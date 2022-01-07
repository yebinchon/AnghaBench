
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gxt4500_par {int dummy; } ;
struct fb_info {struct gxt4500_par* par; } ;


 int DISP_CTL ;
 int DISP_CTL_OFF ;




 int SYNC_CTL ;
 int SYNC_CTL_HSYNC_OFF ;
 int SYNC_CTL_SYNC_OFF ;
 int SYNC_CTL_VSYNC_OFF ;
 int readreg (struct gxt4500_par*,int ) ;
 int writereg (struct gxt4500_par*,int ,int) ;

__attribute__((used)) static int gxt4500_blank(int blank, struct fb_info *info)
{
 struct gxt4500_par *par = info->par;
 int ctrl, dctl;

 ctrl = readreg(par, SYNC_CTL);
 ctrl &= ~(SYNC_CTL_SYNC_OFF | SYNC_CTL_HSYNC_OFF | SYNC_CTL_VSYNC_OFF);
 dctl = readreg(par, DISP_CTL);
 dctl |= DISP_CTL_OFF;
 switch (blank) {
 case 129:
  dctl &= ~DISP_CTL_OFF;
  break;
 case 130:
  ctrl |= SYNC_CTL_SYNC_OFF;
  break;
 case 131:
  ctrl |= SYNC_CTL_HSYNC_OFF;
  break;
 case 128:
  ctrl |= SYNC_CTL_VSYNC_OFF;
  break;
 default: ;
 }
 writereg(par, SYNC_CTL, ctrl);
 writereg(par, DISP_CTL, dctl);

 return 0;
}

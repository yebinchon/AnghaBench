
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh7760fb_platdata {int (* blank ) (int) ;} ;
struct sh7760fb_par {scalar_t__ base; struct sh7760fb_platdata* pd; } ;
struct fb_info {struct sh7760fb_par* par; } ;


 int FB_BLANK_UNBLANK ;
 scalar_t__ LDCNTR ;
 unsigned short LDCNTR_DON ;
 unsigned short LDCNTR_DON2 ;
 scalar_t__ LDINTR ;
 unsigned short VINT_START ;
 unsigned short ioread16 (scalar_t__) ;
 int iowrite16 (unsigned short,scalar_t__) ;
 int stub1 (int) ;
 int wait_for_lps (struct sh7760fb_par*,int) ;

__attribute__((used)) static int sh7760fb_blank(int blank, struct fb_info *info)
{
 struct sh7760fb_par *par = info->par;
 struct sh7760fb_platdata *pd = par->pd;
 unsigned short cntr = ioread16(par->base + LDCNTR);
 unsigned short intr = ioread16(par->base + LDINTR);
 int lps;

 if (blank == FB_BLANK_UNBLANK) {
  intr |= VINT_START;
  cntr = LDCNTR_DON2 | LDCNTR_DON;
  lps = 3;
 } else {
  intr &= ~VINT_START;
  cntr = LDCNTR_DON2;
  lps = 0;
 }

 if (pd->blank)
  pd->blank(blank);

 iowrite16(intr, par->base + LDINTR);
 iowrite16(cntr, par->base + LDCNTR);

 return wait_for_lps(par, lps);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s3c_fb {scalar_t__ regs; } ;


 scalar_t__ VIDCON0 ;
 int VIDCON0_ENVID ;
 int VIDCON0_ENVID_F ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void s3c_fb_enable(struct s3c_fb *sfb, int enable)
{
 u32 vidcon0 = readl(sfb->regs + VIDCON0);

 if (enable)
  vidcon0 |= VIDCON0_ENVID | VIDCON0_ENVID_F;
 else {




  if (!(vidcon0 & VIDCON0_ENVID))
   return;

  vidcon0 |= VIDCON0_ENVID;
  vidcon0 &= ~VIDCON0_ENVID_F;
 }

 writel(vidcon0, sfb->regs + VIDCON0);
}

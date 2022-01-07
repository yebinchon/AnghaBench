
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s3c_hsotg {scalar_t__ regs; } ;


 scalar_t__ S3C_GINTMSK ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void s3c_hsotg_disable_gsint(struct s3c_hsotg *hsotg, u32 ints)
{
 u32 gsintmsk = readl(hsotg->regs + S3C_GINTMSK);
 u32 new_gsintmsk;

 new_gsintmsk = gsintmsk & ~ints;

 if (new_gsintmsk != gsintmsk)
  writel(new_gsintmsk, hsotg->regs + S3C_GINTMSK);
}

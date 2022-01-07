
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s3c_hsotg {scalar_t__ regs; int dev; } ;


 scalar_t__ S3C_GINTMSK ;
 int dev_dbg (int ,char*,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void s3c_hsotg_en_gsint(struct s3c_hsotg *hsotg, u32 ints)
{
 u32 gsintmsk = readl(hsotg->regs + S3C_GINTMSK);
 u32 new_gsintmsk;

 new_gsintmsk = gsintmsk | ints;

 if (new_gsintmsk != gsintmsk) {
  dev_dbg(hsotg->dev, "gsintmsk now 0x%08x\n", new_gsintmsk);
  writel(new_gsintmsk, hsotg->regs + S3C_GINTMSK);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int W100_SUSPEND_EXTMEM ;
 scalar_t__ mmCLK_PIN_CNTL ;
 scalar_t__ mmMC_EXT_MEM_LOCATION ;
 scalar_t__ mmMC_PERF_MON_CNTL ;
 scalar_t__ mmMEM_EXT_CNTL ;
 scalar_t__ mmMEM_EXT_TIMING_CNTL ;
 scalar_t__ mmPLL_CNTL ;
 scalar_t__ mmPWRMGT_CNTL ;
 scalar_t__ mmSCLK_CNTL ;
 int readl (scalar_t__) ;
 scalar_t__ remapped_regs ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void w100_suspend(u32 mode)
{
 u32 val;

 writel(0x7FFF8000, remapped_regs + mmMC_EXT_MEM_LOCATION);
 writel(0x00FF0000, remapped_regs + mmMC_PERF_MON_CNTL);

 val = readl(remapped_regs + mmMEM_EXT_TIMING_CNTL);
 val &= ~(0x00100000);
 val |= 0xFF000000;
 writel(val, remapped_regs + mmMEM_EXT_TIMING_CNTL);

 val = readl(remapped_regs + mmMEM_EXT_CNTL);
 val &= ~(0x00040000);
 val |= 0x00080000;
 writel(val, remapped_regs + mmMEM_EXT_CNTL);

 udelay(1);

 if (mode == W100_SUSPEND_EXTMEM) {

  val = readl(remapped_regs + mmMEM_EXT_CNTL);
  val |= 0x40000000;
  writel(val, remapped_regs + mmMEM_EXT_CNTL);


  val = readl(remapped_regs + mmMEM_EXT_CNTL);
  val &= ~(0x00000001);
  writel(val, remapped_regs + mmMEM_EXT_CNTL);
 } else {
  writel(0x00000000, remapped_regs + mmSCLK_CNTL);
  writel(0x000000BF, remapped_regs + mmCLK_PIN_CNTL);
  writel(0x00000015, remapped_regs + mmPWRMGT_CNTL);

  udelay(5);

  val = readl(remapped_regs + mmPLL_CNTL);
  val |= 0x00000004;
  writel(val, remapped_regs + mmPLL_CNTL);
  writel(0x0000001d, remapped_regs + mmPWRMGT_CNTL);
 }
}

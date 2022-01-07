
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ mmACTIVE_V_DISP ;
 scalar_t__ mmDISP_INT_CNTL ;
 scalar_t__ mmGEN_INT_CNTL ;
 scalar_t__ mmGEN_INT_STATUS ;
 int readl (scalar_t__) ;
 scalar_t__ remapped_regs ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void w100_vsync(void)
{
 u32 tmp;
 int timeout = 30000;

 tmp = readl(remapped_regs + mmACTIVE_V_DISP);


 writel((tmp >> 16) & 0x3ff, remapped_regs + mmDISP_INT_CNTL);


 tmp = readl(remapped_regs + mmGEN_INT_CNTL);

 tmp &= ~0x00000002;
 writel(tmp, remapped_regs + mmGEN_INT_CNTL);


 writel(0x00000002, remapped_regs + mmGEN_INT_STATUS);


 writel((tmp | 0x00000002), remapped_regs + mmGEN_INT_CNTL);


 writel(0x00000002, remapped_regs + mmGEN_INT_STATUS);

 while(timeout > 0) {
  if (readl(remapped_regs + mmGEN_INT_STATUS) & 0x00000002)
   break;
  udelay(1);
  timeout--;
 }


 writel(tmp, remapped_regs + mmGEN_INT_CNTL);


 writel(0x00000002, remapped_regs + mmGEN_INT_STATUS);
}

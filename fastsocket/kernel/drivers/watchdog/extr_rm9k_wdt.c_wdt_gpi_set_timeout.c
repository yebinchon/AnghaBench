
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int CLOCK ;
 int CPCCR ;
 int __raw_writel (int const,scalar_t__) ;
 int iob () ;
 int lock_titan_regs () ;
 int titan_readl (int ) ;
 int titan_writel (int,int ) ;
 int unlock_titan_regs () ;
 int wd_ctr ;
 scalar_t__ wd_regs ;
 int wmb () ;

__attribute__((used)) static void wdt_gpi_set_timeout(unsigned int to)
{
 u32 reg;
 const u32 wdval = (to * CLOCK) & ~0x0000000f;

 lock_titan_regs();
 reg = titan_readl(CPCCR) & ~(0xf << (wd_ctr * 4));
 titan_writel(reg, CPCCR);
 wmb();
 __raw_writel(wdval, wd_regs + 0x0000);
 wmb();
 titan_writel(reg | (0x2 << (wd_ctr * 4)), CPCCR);
 wmb();
 titan_writel(reg | (0x5 << (wd_ctr * 4)), CPCCR);
 iob();
 unlock_titan_regs();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CPCCR ;
 int CPGIG1ER ;
 int iob () ;
 int lock_titan_regs () ;
 int titan_readl (int ) ;
 int titan_writel (int,int ) ;
 int unlock_titan_regs () ;
 int wd_ctr ;

__attribute__((used)) static void wdt_gpi_stop(void)
{
 u32 reg;

 lock_titan_regs();
 reg = titan_readl(CPCCR) & ~(0xf << (wd_ctr * 4));
 titan_writel(reg, CPCCR);
 reg = titan_readl(CPGIG1ER);
 titan_writel(reg & ~(0x100 << wd_ctr), CPGIG1ER);
 iob();
 unlock_titan_regs();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef int u32 ;


 int ENAMODE12_PERIODIC ;
 scalar_t__ PRD12 ;
 scalar_t__ PRD34 ;
 scalar_t__ TCR ;
 scalar_t__ TGCR ;
 scalar_t__ TIM12 ;
 int TIM12RS_UNRESET ;
 scalar_t__ TIM34 ;
 int TIM34RS_UNRESET ;
 int TIMMODE_64BIT_WDOG ;
 int WDEN ;
 int WDKEY_SEQ0 ;
 int WDKEY_SEQ1 ;
 scalar_t__ WDTCR ;
 unsigned long clk_get_rate (int ) ;
 scalar_t__ heartbeat ;
 int io_lock ;
 int iowrite32 (int,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ wdt_base ;
 int wdt_clk ;

__attribute__((used)) static void wdt_enable(void)
{
 u32 tgcr;
 u32 timer_margin;
 unsigned long wdt_freq;

 wdt_freq = clk_get_rate(wdt_clk);

 spin_lock(&io_lock);


 iowrite32(0, wdt_base + TCR);

 iowrite32(0, wdt_base + TGCR);
 tgcr = TIMMODE_64BIT_WDOG | TIM12RS_UNRESET | TIM34RS_UNRESET;
 iowrite32(tgcr, wdt_base + TGCR);

 iowrite32(0, wdt_base + TIM12);
 iowrite32(0, wdt_base + TIM34);

 timer_margin = (((u64)heartbeat * wdt_freq) & 0xffffffff);
 iowrite32(timer_margin, wdt_base + PRD12);
 timer_margin = (((u64)heartbeat * wdt_freq) >> 32);
 iowrite32(timer_margin, wdt_base + PRD34);

 iowrite32(ENAMODE12_PERIODIC, wdt_base + TCR);





 iowrite32(WDKEY_SEQ0 | WDEN, wdt_base + WDTCR);

 iowrite32(WDKEY_SEQ1 | WDEN, wdt_base + WDTCR);

 spin_unlock(&io_lock);
}

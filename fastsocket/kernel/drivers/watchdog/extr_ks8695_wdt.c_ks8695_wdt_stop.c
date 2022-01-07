
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KS8695_TMCON ;
 scalar_t__ KS8695_TMR_VA ;
 unsigned long TMCON_T0EN ;
 unsigned long __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned long,scalar_t__) ;
 int ks8695_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void ks8695_wdt_stop(void)
{
 unsigned long tmcon;

 spin_lock(&ks8695_lock);

 tmcon = __raw_readl(KS8695_TMR_VA + KS8695_TMCON);
 __raw_writel(tmcon & ~TMCON_T0EN, KS8695_TMR_VA + KS8695_TMCON);
 spin_unlock(&ks8695_lock);
}

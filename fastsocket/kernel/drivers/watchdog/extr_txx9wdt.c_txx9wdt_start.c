
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wtmr; int tcr; int tisr; int ccdr; int cpra; } ;


 int TXx9_TMTCR_CCDE ;
 int TXx9_TMTCR_TCE ;
 int TXx9_TMTCR_TMODE_WDOG ;
 int TXx9_TMWTMR_TWC ;
 int TXx9_TMWTMR_TWIE ;
 int WD_TIMER_CCD ;
 int WD_TIMER_CLK ;
 int __raw_writel (int,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timeout ;
 int txx9_lock ;
 TYPE_1__* txx9wdt_reg ;

__attribute__((used)) static void txx9wdt_start(void)
{
 spin_lock(&txx9_lock);
 __raw_writel(WD_TIMER_CLK * timeout, &txx9wdt_reg->cpra);
 __raw_writel(WD_TIMER_CCD, &txx9wdt_reg->ccdr);
 __raw_writel(0, &txx9wdt_reg->tisr);
 __raw_writel(TXx9_TMTCR_TCE | TXx9_TMTCR_CCDE | TXx9_TMTCR_TMODE_WDOG,
       &txx9wdt_reg->tcr);
 __raw_writel(TXx9_TMWTMR_TWIE | TXx9_TMWTMR_TWC, &txx9wdt_reg->wtmr);
 spin_unlock(&txx9_lock);
}

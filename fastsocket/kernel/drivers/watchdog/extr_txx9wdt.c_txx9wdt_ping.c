
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wtmr; } ;


 int TXx9_TMWTMR_TWC ;
 int TXx9_TMWTMR_TWIE ;
 int __raw_writel (int,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int txx9_lock ;
 TYPE_1__* txx9wdt_reg ;

__attribute__((used)) static void txx9wdt_ping(void)
{
 spin_lock(&txx9_lock);
 __raw_writel(TXx9_TMWTMR_TWIE | TXx9_TMWTMR_TWC, &txx9wdt_reg->wtmr);
 spin_unlock(&txx9_lock);
}

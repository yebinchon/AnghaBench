
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int readw (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wdt_spinlock ;
 int wdtmrctl ;
 int writew (int,int ) ;

__attribute__((used)) static void wdt_config(int writeval)
{
 __u16 dummy;
 unsigned long flags;


 spin_lock_irqsave(&wdt_spinlock, flags);
 dummy = readw(wdtmrctl);
 writew(0xAAAA, wdtmrctl);
 writew(0x5555, wdtmrctl);

 writew(0x3333, wdtmrctl);
 writew(0xCCCC, wdtmrctl);

 writew(writeval, wdtmrctl);
 spin_unlock_irqrestore(&wdt_spinlock, flags);
}

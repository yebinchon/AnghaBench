
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char KBC_IRQ ;
 unsigned char MSE_IRQ ;
 unsigned char UART1_IRQ ;
 unsigned char UART2_IRQ ;
 int WDCF ;
 int WDTO ;
 int __sc1200wdt_read_data (int ,unsigned char*) ;
 int __sc1200wdt_write_data (int ,unsigned char) ;
 int sc1200wdt_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 unsigned char timeout ;

__attribute__((used)) static void sc1200wdt_start(void)
{
 unsigned char reg;
 spin_lock(&sc1200wdt_lock);

 __sc1200wdt_read_data(WDCF, &reg);

 reg |= (KBC_IRQ | MSE_IRQ | UART1_IRQ | UART2_IRQ);
 __sc1200wdt_write_data(WDCF, reg);

 __sc1200wdt_write_data(WDTO, timeout);

 spin_unlock(&sc1200wdt_lock);
}

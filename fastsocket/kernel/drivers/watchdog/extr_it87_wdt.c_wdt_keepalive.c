
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CIR_DR (int ) ;
 int WDTS_KEEPALIVE ;
 int WDTS_USE_GP ;
 int base ;
 int inb (int ) ;
 int outb (int,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wdt_status ;

__attribute__((used)) static void wdt_keepalive(void)
{
 if (test_bit(WDTS_USE_GP, &wdt_status))
  inb(base);
 else

  outb(0x55, CIR_DR(base));
 set_bit(WDTS_KEEPALIVE, &wdt_status);
}

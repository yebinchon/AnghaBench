
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WDT_COUNT0 ;
 int outb (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void wdtpci_ctr_load(int ctr, int val)
{
 outb(val & 0xFF, WDT_COUNT0 + ctr);
 udelay(8);
 outb(val >> 8, WDT_COUNT0 + ctr);
 udelay(8);
}

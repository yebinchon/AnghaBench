
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int mpc8xxx_wdt_keepalive () ;
 int timeout_sec ;
 int wdt_timer ;

__attribute__((used)) static void mpc8xxx_wdt_timer_ping(unsigned long arg)
{
 mpc8xxx_wdt_keepalive();

 mod_timer(&wdt_timer, jiffies + HZ * timeout_sec / 2);
}

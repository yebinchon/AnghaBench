
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 scalar_t__ jiffies ;
 int mixcomwd_ping () ;
 int mixcomwd_timer ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void mixcomwd_timerfun(unsigned long d)
{
 mixcomwd_ping();
 mod_timer(&mixcomwd_timer, jiffies + 5 * HZ);
}

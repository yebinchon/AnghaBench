
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int soft_margin ;
 int watchdog_ticktock ;

__attribute__((used)) static int softdog_keepalive(void)
{
 mod_timer(&watchdog_ticktock, jiffies+(soft_margin*HZ));
 return 0;
}

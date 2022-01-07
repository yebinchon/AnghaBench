
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 unsigned long SYS_DOWN ;
 unsigned long SYS_HALT ;
 int wdt977_stop () ;

__attribute__((used)) static int wdt977_notify_sys(struct notifier_block *this, unsigned long code,
 void *unused)
{
 if (code == SYS_DOWN || code == SYS_HALT)
  wdt977_stop();
 return NOTIFY_DONE;
}

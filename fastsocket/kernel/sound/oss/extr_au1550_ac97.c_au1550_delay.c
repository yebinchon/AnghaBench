
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 scalar_t__ in_interrupt () ;
 int jiffies ;
 int schedule_timeout (long) ;

__attribute__((used)) static void
au1550_delay(int msec)
{
 unsigned long tmo;
 signed long tmo2;

 if (in_interrupt())
  return;

 tmo = jiffies + (msec * HZ) / 1000;
 for (;;) {
  tmo2 = tmo - jiffies;
  if (tmo2 <= 0)
   break;
  schedule_timeout(tmo2);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HZ ;
 int LW_URGENT ;
 int __cancel_delayed_work (int *) ;
 unsigned long jiffies ;
 int linkwatch_flags ;
 unsigned long linkwatch_nextevent ;
 int linkwatch_work ;
 int schedule_delayed_watch (int *,unsigned long) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void linkwatch_schedule_work(int urgent)
{
 unsigned long delay = linkwatch_nextevent - jiffies;

 if (test_bit(LW_URGENT, &linkwatch_flags))
  return;


 if (urgent) {
  if (test_and_set_bit(LW_URGENT, &linkwatch_flags))
   return;
  delay = 0;
 }


 if (delay > HZ)
  delay = 0;





 if (schedule_delayed_watch(&linkwatch_work, delay) == !delay)
  return;


 if (!test_bit(LW_URGENT, &linkwatch_flags))
  return;


 if (!__cancel_delayed_work(&linkwatch_work))
  return;


 schedule_delayed_watch(&linkwatch_work, 0);
}

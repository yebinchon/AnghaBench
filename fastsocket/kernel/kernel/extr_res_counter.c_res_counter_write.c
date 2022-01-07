
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ (* write_strategy_fn ) (char const*,unsigned long long*) ;
struct res_counter {int lock; } ;


 int EINVAL ;
 unsigned long long* res_counter_member (struct res_counter*,int) ;
 unsigned long long simple_strtoull (char const*,char**,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int res_counter_write(struct res_counter *counter, int member,
        const char *buf, write_strategy_fn write_strategy)
{
 char *end;
 unsigned long flags;
 unsigned long long tmp, *val;

 if (write_strategy) {
  if (write_strategy(buf, &tmp))
   return -EINVAL;
 } else {
  tmp = simple_strtoull(buf, &end, 10);
  if (*end != '\0')
   return -EINVAL;
 }
 spin_lock_irqsave(&counter->lock, flags);
 val = res_counter_member(counter, member);
 *val = tmp;
 spin_unlock_irqrestore(&counter->lock, flags);
 return 0;
}

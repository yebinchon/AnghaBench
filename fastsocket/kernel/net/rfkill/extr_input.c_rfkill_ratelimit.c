
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RFKILL_OPS_DELAY ;
 int jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_after (int ,unsigned long const) ;

__attribute__((used)) static unsigned long rfkill_ratelimit(const unsigned long last)
{
 const unsigned long delay = msecs_to_jiffies(RFKILL_OPS_DELAY);
 return (time_after(jiffies, last + delay)) ? 0 : delay;
}

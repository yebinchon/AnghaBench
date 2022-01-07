
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tv64; } ;
typedef TYPE_1__ ktime_t ;


 TYPE_1__ last_jiffies_update ;
 TYPE_1__ tick_next_period ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;
 int xtime_lock ;

__attribute__((used)) static ktime_t tick_init_jiffy_update(void)
{
 ktime_t period;

 write_seqlock(&xtime_lock);

 if (last_jiffies_update.tv64 == 0)
  last_jiffies_update = tick_next_period;
 period = last_jiffies_update;
 write_sequnlock(&xtime_lock);
 return period;
}

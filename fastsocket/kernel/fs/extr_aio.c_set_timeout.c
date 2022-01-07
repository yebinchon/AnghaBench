
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct aio_timeout {int timed_out; TYPE_1__ timer; } ;


 int add_timer (TYPE_1__*) ;
 int jiffies ;
 scalar_t__ time_after (scalar_t__,int ) ;
 scalar_t__ timespec_to_jiffies (struct timespec const*) ;

__attribute__((used)) static inline void set_timeout(long start_jiffies, struct aio_timeout *to,
          const struct timespec *ts)
{
 to->timer.expires = start_jiffies + timespec_to_jiffies(ts);
 if (time_after(to->timer.expires, jiffies))
  add_timer(&to->timer);
 else
  to->timed_out = 1;
}

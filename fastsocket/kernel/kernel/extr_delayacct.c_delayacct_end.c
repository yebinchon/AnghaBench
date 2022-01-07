
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct timespec {int dummy; } ;
typedef scalar_t__ s64 ;
struct TYPE_4__ {TYPE_1__* delays; } ;
struct TYPE_3__ {int lock; } ;


 TYPE_2__* current ;
 int do_posix_clock_monotonic_gettime (struct timespec*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct timespec timespec_sub (struct timespec,struct timespec) ;
 scalar_t__ timespec_to_ns (struct timespec*) ;

__attribute__((used)) static void delayacct_end(struct timespec *start, struct timespec *end,
    u64 *total, u32 *count)
{
 struct timespec ts;
 s64 ns;
 unsigned long flags;

 do_posix_clock_monotonic_gettime(end);
 ts = timespec_sub(*end, *start);
 ns = timespec_to_ns(&ts);
 if (ns < 0)
  return;

 spin_lock_irqsave(&current->delays->lock, flags);
 *total += ns;
 (*count)++;
 spin_unlock_irqrestore(&current->delays->lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_2__ {int lock; struct timespec xtime; int wall_to_monotonic; } ;


 int EINVAL ;
 int clock_was_set () ;
 TYPE_1__ timekeeper ;
 int timekeeping_forward_now () ;
 int timekeeping_update (int) ;
 int timespec_sub (int ,struct timespec) ;
 int timespec_valid_strict (struct timespec const*) ;
 int write_seqlock_irqsave (int *,unsigned long) ;
 int write_sequnlock_irqrestore (int *,unsigned long) ;

int do_settimeofday(const struct timespec *tv)
{
 struct timespec ts_delta;
 unsigned long flags;

 if (!timespec_valid_strict(tv))
  return -EINVAL;

 write_seqlock_irqsave(&timekeeper.lock, flags);

 timekeeping_forward_now();

 ts_delta.tv_sec = tv->tv_sec - timekeeper.xtime.tv_sec;
 ts_delta.tv_nsec = tv->tv_nsec - timekeeper.xtime.tv_nsec;
 timekeeper.wall_to_monotonic =
   timespec_sub(timekeeper.wall_to_monotonic, ts_delta);

 timekeeper.xtime = *tv;
 timekeeping_update(1);

 write_sequnlock_irqrestore(&timekeeper.lock, flags);


 clock_was_set();

 return 0;
}

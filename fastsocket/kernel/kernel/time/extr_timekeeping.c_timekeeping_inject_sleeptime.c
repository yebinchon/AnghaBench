
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_2__ {int lock; } ;


 int __timekeeping_inject_sleeptime (struct timespec*) ;
 int clock_was_set () ;
 int read_persistent_clock (struct timespec*) ;
 TYPE_1__ timekeeper ;
 int timekeeping_forward_now () ;
 int timekeeping_update (int) ;
 int write_seqlock_irqsave (int *,unsigned long) ;
 int write_sequnlock_irqrestore (int *,unsigned long) ;

void timekeeping_inject_sleeptime(struct timespec *delta)
{
 unsigned long flags;
 struct timespec ts;


 read_persistent_clock(&ts);
 if (!(ts.tv_sec == 0 && ts.tv_nsec == 0))
  return;

 write_seqlock_irqsave(&timekeeper.lock, flags);

 timekeeping_forward_now();

 __timekeeping_inject_sleeptime(delta);

 timekeeping_update(1);

 write_sequnlock_irqrestore(&timekeeper.lock, flags);


 clock_was_set();
}

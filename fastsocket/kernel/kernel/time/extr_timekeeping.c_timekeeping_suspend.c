
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int tv_sec; } ;
struct sys_device {int dummy; } ;
typedef int pm_message_t ;
struct TYPE_2__ {int lock; struct timespec xtime; } ;


 int CLOCK_EVT_NOTIFY_SUSPEND ;
 int abs (int ) ;
 int clockevents_notify (int ,int *) ;
 int clocksource_suspend () ;
 int read_persistent_clock (struct timespec*) ;
 TYPE_1__ timekeeper ;
 int timekeeping_forward_now () ;
 struct timespec timekeeping_suspend_time ;
 int timekeeping_suspended ;
 struct timespec timespec_add (struct timespec,struct timespec) ;
 struct timespec timespec_sub (struct timespec,struct timespec) ;
 int write_seqlock_irqsave (int *,unsigned long) ;
 int write_sequnlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int timekeeping_suspend(struct sys_device *dev, pm_message_t state)
{
 unsigned long flags;
 struct timespec delta, delta_delta;
 static struct timespec old_delta;

 read_persistent_clock(&timekeeping_suspend_time);

 write_seqlock_irqsave(&timekeeper.lock, flags);
 timekeeping_forward_now();
 timekeeping_suspended = 1;







 delta = timespec_sub(timekeeper.xtime, timekeeping_suspend_time);
 delta_delta = timespec_sub(delta, old_delta);
 if (abs(delta_delta.tv_sec) >= 2) {




  old_delta = delta;
 } else {

  timekeeping_suspend_time =
   timespec_add(timekeeping_suspend_time, delta_delta);
 }
 write_sequnlock_irqrestore(&timekeeper.lock, flags);

 clockevents_notify(CLOCK_EVT_NOTIFY_SUSPEND, ((void*)0));
 clocksource_suspend();

 return 0;
}

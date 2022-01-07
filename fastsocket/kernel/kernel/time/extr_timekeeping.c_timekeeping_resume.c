
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct sys_device {int dummy; } ;
struct TYPE_4__ {int (* read ) (TYPE_2__*) ;int cycle_last; } ;
struct TYPE_3__ {int lock; scalar_t__ ntp_error; TYPE_2__* clock; } ;


 int CLOCK_EVT_NOTIFY_RESUME ;
 int __timekeeping_inject_sleeptime (struct timespec*) ;
 int clockevents_notify (int ,int *) ;
 int clocksource_resume () ;
 int hrtimers_resume () ;
 int read_persistent_clock (struct timespec*) ;
 int stub1 (TYPE_2__*) ;
 TYPE_1__ timekeeper ;
 int timekeeping_suspend_time ;
 scalar_t__ timekeeping_suspended ;
 int timekeeping_update (int) ;
 scalar_t__ timespec_compare (struct timespec*,int *) ;
 struct timespec timespec_sub (struct timespec,int ) ;
 int touch_softlockup_watchdog () ;
 int write_seqlock_irqsave (int *,unsigned long) ;
 int write_sequnlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int timekeeping_resume(struct sys_device *dev)
{
 unsigned long flags;
 struct timespec ts;

 read_persistent_clock(&ts);

 clocksource_resume();

 write_seqlock_irqsave(&timekeeper.lock, flags);

 if (timespec_compare(&ts, &timekeeping_suspend_time) > 0) {
  ts = timespec_sub(ts, timekeeping_suspend_time);
  __timekeeping_inject_sleeptime(&ts);
 }

 timekeeper.clock->cycle_last = timekeeper.clock->read(timekeeper.clock);
 timekeeper.ntp_error = 0;
 timekeeping_suspended = 0;
 timekeeping_update(0);
 write_sequnlock_irqrestore(&timekeeper.lock, flags);

 touch_softlockup_watchdog();

 clockevents_notify(CLOCK_EVT_NOTIFY_RESUME, ((void*)0));


 hrtimers_resume();

 return 0;
}

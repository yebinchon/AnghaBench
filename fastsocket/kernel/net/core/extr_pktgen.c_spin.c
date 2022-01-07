
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktgen_dev {int delay; void* next_tx; int idle_acc; scalar_t__ running; } ;
struct hrtimer_sleeper {int timer; int * task; } ;
typedef scalar_t__ s64 ;
typedef int ktime_t ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_ABS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int current ;
 int hrtimer_active (int *) ;
 int hrtimer_cancel (int *) ;
 int hrtimer_expires_remaining (int *) ;
 int hrtimer_init_on_stack (int *,int ,int ) ;
 int hrtimer_init_sleeper (struct hrtimer_sleeper*,int ) ;
 int hrtimer_set_expires (int *,int ) ;
 int hrtimer_start_expires (int *,int ) ;
 void* ktime_add_ns (int ,int ) ;
 int ktime_now () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 scalar_t__ ktime_to_us (int ) ;
 scalar_t__ likely (int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int signal_pending (int ) ;
 int udelay (scalar_t__) ;

__attribute__((used)) static void spin(struct pktgen_dev *pkt_dev, ktime_t spin_until)
{
 ktime_t start_time, end_time;
 s64 remaining;
 struct hrtimer_sleeper t;

 hrtimer_init_on_stack(&t.timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
 hrtimer_set_expires(&t.timer, spin_until);

 remaining = ktime_to_us(hrtimer_expires_remaining(&t.timer));
 if (remaining <= 0) {
  pkt_dev->next_tx = ktime_add_ns(spin_until, pkt_dev->delay);
  return;
 }

 start_time = ktime_now();
 if (remaining < 100)
  udelay(remaining);
 else {

  hrtimer_init_sleeper(&t, current);
  do {
   set_current_state(TASK_INTERRUPTIBLE);
   hrtimer_start_expires(&t.timer, HRTIMER_MODE_ABS);
   if (!hrtimer_active(&t.timer))
    t.task = ((void*)0);

   if (likely(t.task))
    schedule();

   hrtimer_cancel(&t.timer);
  } while (t.task && pkt_dev->running && !signal_pending(current));
  __set_current_state(TASK_RUNNING);
 }
 end_time = ktime_now();

 pkt_dev->idle_acc += ktime_to_ns(ktime_sub(end_time, start_time));
 pkt_dev->next_tx = ktime_add_ns(end_time, pkt_dev->delay);
}

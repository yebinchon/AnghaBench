
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int call_console_drivers (unsigned int,unsigned int) ;
 unsigned int con_start ;
 scalar_t__ console_locked ;
 scalar_t__ console_may_schedule ;
 int console_sem ;
 scalar_t__ console_suspended ;
 int local_irq_restore (unsigned long) ;
 unsigned int log_end ;
 unsigned int log_start ;
 int logbuf_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_critical_timings () ;
 int stop_critical_timings () ;
 int up (int *) ;
 int wake_up_klogd () ;

void release_console_sem(void)
{
 unsigned long flags;
 unsigned _con_start, _log_end;
 unsigned wake_klogd = 0;

 if (console_suspended) {
  up(&console_sem);
  return;
 }

 console_may_schedule = 0;

 for ( ; ; ) {
  spin_lock_irqsave(&logbuf_lock, flags);
  wake_klogd |= log_start - log_end;
  if (con_start == log_end)
   break;
  _con_start = con_start;
  _log_end = log_end;
  con_start = log_end;
  spin_unlock(&logbuf_lock);
  stop_critical_timings();
  call_console_drivers(_con_start, _log_end);
  start_critical_timings();
  local_irq_restore(flags);
 }
 console_locked = 0;
 up(&console_sem);
 spin_unlock_irqrestore(&logbuf_lock, flags);
 if (wake_klogd)
  wake_up_klogd();
}

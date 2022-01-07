
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 unsigned long jiffies_to_msecs (unsigned long) ;
 int msecs_to_jiffies (unsigned int) ;
 unsigned long schedule_timeout_interruptible (unsigned long) ;
 int signal_pending (int ) ;

unsigned long msleep_interruptible(unsigned int msecs)
{
 unsigned long timeout = msecs_to_jiffies(msecs) + 1;

 while (timeout && !signal_pending(current))
  timeout = schedule_timeout_interruptible(timeout);
 return jiffies_to_msecs(timeout);
}

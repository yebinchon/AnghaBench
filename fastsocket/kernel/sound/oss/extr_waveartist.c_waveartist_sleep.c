
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int TASK_INTERRUPTIBLE ;
 unsigned int schedule_timeout (unsigned int) ;
 int set_current_state (int ) ;

__attribute__((used)) static inline int
waveartist_sleep(int timeout_ms)
{
 unsigned int timeout = timeout_ms * 10 * HZ / 100;

 do {
  set_current_state(TASK_INTERRUPTIBLE);
  timeout = schedule_timeout(timeout);
 } while (timeout);

 return 0;
}

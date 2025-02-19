
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;


 struct timespec CURRENT_TIME ;
 long EINVAL ;
 long MAX_SCHEDULE_TIMEOUT ;
 scalar_t__ NSEC_PER_SEC ;
 int timespec_to_jiffies (struct timespec*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static long prepare_timeout(struct timespec *p)
{
 struct timespec nowts;
 long timeout;

 if (p) {
  if (unlikely(p->tv_nsec < 0 || p->tv_sec < 0
   || p->tv_nsec >= NSEC_PER_SEC))
   return -EINVAL;
  nowts = CURRENT_TIME;

  p->tv_sec -= nowts.tv_sec;
  if (p->tv_nsec < nowts.tv_nsec) {
   p->tv_nsec += NSEC_PER_SEC;
   p->tv_sec--;
  }
  p->tv_nsec -= nowts.tv_nsec;
  if (p->tv_sec < 0)
   return 0;

  timeout = timespec_to_jiffies(p) + 1;
 } else
  return MAX_SCHEDULE_TIMEOUT;

 return timeout;
}

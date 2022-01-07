
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {long tv_sec; long tv_nsec; } ;


 int EINVAL ;
 int ktime_get_ts (struct timespec*) ;
 struct timespec timespec_add_safe (struct timespec,struct timespec) ;
 int timespec_valid (struct timespec*) ;

int poll_select_set_timeout(struct timespec *to, long sec, long nsec)
{
 struct timespec ts = {.tv_sec = sec, .tv_nsec = nsec};

 if (!timespec_valid(&ts))
  return -EINVAL;


 if (!sec && !nsec) {
  to->tv_sec = to->tv_nsec = 0;
 } else {
  ktime_get_ts(to);
  *to = timespec_add_safe(*to, ts);
 }
 return 0;
}

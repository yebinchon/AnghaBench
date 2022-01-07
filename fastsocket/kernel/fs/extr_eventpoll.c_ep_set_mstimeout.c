
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {long tv_sec; long tv_nsec; } ;


 long MSEC_PER_SEC ;
 long NSEC_PER_MSEC ;
 int ktime_get_ts (struct timespec*) ;
 struct timespec timespec_add_safe (struct timespec,struct timespec) ;

__attribute__((used)) static inline struct timespec ep_set_mstimeout(long ms)
{
 struct timespec now, ts = {
  .tv_sec = ms / MSEC_PER_SEC,
  .tv_nsec = NSEC_PER_MSEC * (ms % MSEC_PER_SEC),
 };

 ktime_get_ts(&now);
 return timespec_add_safe(now, ts);
}

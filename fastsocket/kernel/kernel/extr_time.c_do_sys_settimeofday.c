
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int dummy; } ;
struct timespec {int dummy; } ;


 int EINVAL ;
 int do_settimeofday (struct timespec const*) ;
 int security_settime (struct timespec const*,struct timezone const*) ;
 struct timezone sys_tz ;
 int timespec_valid (struct timespec const*) ;
 int update_vsyscall_tz () ;
 int warp_clock () ;

int do_sys_settimeofday(const struct timespec *tv, const struct timezone *tz)
{
 static int firsttime = 1;
 int error = 0;

 if (tv && !timespec_valid(tv))
  return -EINVAL;

 error = security_settime(tv, tz);
 if (error)
  return error;

 if (tz) {

  sys_tz = *tz;
  update_vsyscall_tz();
  if (firsttime) {
   firsttime = 0;
   if (!tv)
    warp_clock();
  }
 }
 if (tv)
 {



  return do_settimeofday(tv);
 }
 return 0;
}

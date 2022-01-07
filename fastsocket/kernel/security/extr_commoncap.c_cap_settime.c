
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int dummy; } ;
struct timespec {int dummy; } ;


 int CAP_SYS_TIME ;
 int EPERM ;
 int capable (int ) ;

int cap_settime(const struct timespec *ts, const struct timezone *tz)
{
 if (!capable(CAP_SYS_TIME))
  return -EPERM;
 return 0;
}

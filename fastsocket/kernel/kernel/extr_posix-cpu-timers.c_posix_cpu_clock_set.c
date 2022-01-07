
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int clockid_t ;


 int EPERM ;
 int check_clock (int const) ;

__attribute__((used)) static int
posix_cpu_clock_set(const clockid_t which_clock, const struct timespec *tp)
{




 int error = check_clock(which_clock);
 if (error == 0) {
  error = -EPERM;
 }
 return error;
}

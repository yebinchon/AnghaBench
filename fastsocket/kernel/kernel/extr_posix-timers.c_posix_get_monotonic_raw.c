
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int clockid_t ;


 int getrawmonotonic (struct timespec*) ;

__attribute__((used)) static int posix_get_monotonic_raw(clockid_t which_clock, struct timespec *tp)
{
 getrawmonotonic(tp);
 return 0;
}

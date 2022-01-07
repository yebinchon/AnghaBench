
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int clockid_t ;


 struct timespec get_monotonic_coarse () ;

__attribute__((used)) static int posix_get_monotonic_coarse(clockid_t which_clock,
      struct timespec *tp)
{
 *tp = get_monotonic_coarse();
 return 0;
}

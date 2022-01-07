
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int clockid_t ;


 struct timespec current_kernel_time () ;

__attribute__((used)) static int posix_get_realtime_coarse(clockid_t which_clock, struct timespec *tp)
{
 *tp = current_kernel_time();
 return 0;
}

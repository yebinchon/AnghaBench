
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int clockid_t ;


 int THREAD_CLOCK ;
 int posix_cpu_clock_get (int ,struct timespec*) ;

__attribute__((used)) static int thread_cpu_clock_get(const clockid_t which_clock,
    struct timespec *tp)
{
 return posix_cpu_clock_get(THREAD_CLOCK, tp);
}

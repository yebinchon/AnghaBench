
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct timespec {int dummy; } ;
typedef scalar_t__ s64 ;
typedef int cputime_t ;


 int cputime_to_timespec (int ,struct timespec*) ;
 scalar_t__ timespec_to_ns (struct timespec*) ;

__attribute__((used)) static inline u32 cputime_sub_ns(cputime_t ct, s64 real_ns)
{
 struct timespec ts;
 s64 cpu_ns;

 cputime_to_timespec(ct, &ts);
 cpu_ns = timespec_to_ns(&ts);

 return (cpu_ns <= real_ns) ? 0 : cpu_ns - real_ns;
}

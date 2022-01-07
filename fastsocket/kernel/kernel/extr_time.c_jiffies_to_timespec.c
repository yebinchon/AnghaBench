
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct timespec {int tv_nsec; int tv_sec; } ;


 int NSEC_PER_SEC ;
 int TICK_NSEC ;
 int div_u64_rem (int,int ,int *) ;

void
jiffies_to_timespec(const unsigned long jiffies, struct timespec *value)
{




 u32 rem;
 value->tv_sec = div_u64_rem((u64)jiffies * TICK_NSEC,
        NSEC_PER_SEC, &rem);
 value->tv_nsec = rem;
}

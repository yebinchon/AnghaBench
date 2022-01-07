
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned long long tv_sec; unsigned long long tv_nsec; } ;


 int CLOCK_MONOTONIC ;
 int clock_gettime (int ,struct timespec*) ;

__attribute__((used)) static inline unsigned long long rdclock(void)
{
 struct timespec ts;

 clock_gettime(CLOCK_MONOTONIC, &ts);
 return ts.tv_sec * 1000000000ULL + ts.tv_nsec;
}

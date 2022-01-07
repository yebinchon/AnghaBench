
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; unsigned int tv_usec; } ;


 int do_gettimeofday (struct timeval*) ;

__attribute__((used)) static inline unsigned int mon_get_timestamp(void)
{
 struct timeval tval;
 unsigned int stamp;

 do_gettimeofday(&tval);
 stamp = tval.tv_sec & 0xFFFF;
 stamp = stamp * 1000000 + tval.tv_usec;
 return stamp;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; } ;
struct timespec {int ts_nsec; int ts_sec; } ;
typedef int cdf_timestamp_t ;


 int CDF_TIME_PREC ;
 int EINVAL ;
 int errno ;
 int * gmtime_r (int *,struct tm*) ;

int

cdf_timespec_to_timestamp(cdf_timestamp_t *t, const struct timespec *ts)
{

 (void)&t;
 (void)&ts;
 return 0;
}

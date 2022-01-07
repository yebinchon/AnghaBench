
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct timecompare {int skew; scalar_t__ last_update; scalar_t__ offset; } ;
typedef int s64 ;
typedef int ktime_t ;


 int TIMECOMPARE_SKEW_RESOLUTION ;
 int ns_to_ktime (scalar_t__) ;

ktime_t timecompare_transform(struct timecompare *sync,
         u64 source_tstamp)
{
 u64 nsec;

 nsec = source_tstamp + sync->offset;
 nsec += (s64)(source_tstamp - sync->last_update) * sync->skew /
  TIMECOMPARE_SKEW_RESOLUTION;

 return ns_to_ktime(nsec);
}

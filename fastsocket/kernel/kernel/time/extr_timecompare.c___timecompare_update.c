
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timecompare {int last_update; int offset; int skew; } ;
typedef int s64 ;


 int TIMECOMPARE_NEW_SKEW_PER_16 ;
 int TIMECOMPARE_SKEW_RESOLUTION ;
 void* div_s64 (int,int) ;
 int timecompare_offset (struct timecompare*,int*,int*) ;
 scalar_t__ unlikely (int) ;

void __timecompare_update(struct timecompare *sync,
     u64 source_tstamp)
{
 s64 offset;
 u64 average_time;

 if (!timecompare_offset(sync, &offset, &average_time))
  return;

 if (!sync->last_update) {
  sync->last_update = average_time;
  sync->offset = offset;
  sync->skew = 0;
 } else {
  s64 delta_nsec = average_time - sync->last_update;


  if (delta_nsec >= 10000) {
   s64 delta_offset_nsec = offset - sync->offset;
   s64 skew;


   u64 divisor;


   skew = delta_offset_nsec * TIMECOMPARE_SKEW_RESOLUTION;
   divisor = delta_nsec;
   while (unlikely(divisor >= ((s64)1) << 32)) {




    skew = div_s64(skew, 2);
    divisor >>= 1;
   }
   skew = div_s64(skew, divisor);
   sync->skew =
    div_s64((16 - 12) *
     sync->skew +
     12 * skew,
     16);
   sync->last_update = average_time;
   sync->offset = offset;
  }
 }
}

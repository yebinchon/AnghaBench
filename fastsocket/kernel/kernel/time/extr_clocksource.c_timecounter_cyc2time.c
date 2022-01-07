
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct timecounter {int cycle_last; int nsec; TYPE_1__* cc; } ;
typedef int cycle_t ;
struct TYPE_2__ {int mask; } ;


 int cyclecounter_cyc2ns (TYPE_1__*,int) ;

u64 timecounter_cyc2time(struct timecounter *tc,
    cycle_t cycle_tstamp)
{
 u64 cycle_delta = (cycle_tstamp - tc->cycle_last) & tc->cc->mask;
 u64 nsec;






 if (cycle_delta > tc->cc->mask / 2) {
  cycle_delta = (tc->cycle_last - cycle_tstamp) & tc->cc->mask;
  nsec = tc->nsec - cyclecounter_cyc2ns(tc->cc, cycle_delta);
 } else {
  nsec = cyclecounter_cyc2ns(tc->cc, cycle_delta) + tc->nsec;
 }

 return nsec;
}

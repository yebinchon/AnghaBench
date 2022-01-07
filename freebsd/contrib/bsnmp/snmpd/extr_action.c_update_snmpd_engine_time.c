
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct TYPE_2__ {unsigned long long engine_time; } ;


 unsigned long long INT32_MAX ;
 unsigned long long get_ticks () ;
 int set_snmpd_engine () ;
 TYPE_1__ snmpd_engine ;
 unsigned long long start_tick ;

void
update_snmpd_engine_time(void)
{
 uint64_t etime;

 etime = (get_ticks() - start_tick) / 100ULL;
 if (etime < INT32_MAX)
  snmpd_engine.engine_time = etime;
 else {
  start_tick = get_ticks();
  (void)set_snmpd_engine();
  snmpd_engine.engine_time = start_tick;
 }
}

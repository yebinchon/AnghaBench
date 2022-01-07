
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int period_guest_us; int period_guest_sys; int period_us; int period_sys; } ;
struct hist_entry {TYPE_1__ stat; } ;







__attribute__((used)) static void hist_entry__add_cpumode_period(struct hist_entry *he,
        unsigned int cpumode, u64 period)
{
 switch (cpumode) {
 case 129:
  he->stat.period_sys += period;
  break;
 case 128:
  he->stat.period_us += period;
  break;
 case 131:
  he->stat.period_guest_sys += period;
  break;
 case 130:
  he->stat.period_guest_us += period;
  break;
 default:
  break;
 }
}

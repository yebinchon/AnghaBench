
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int period_to_sec (unsigned int) ;

__attribute__((used)) static unsigned int sec_to_period(unsigned int secs)
{
 unsigned int period;
 for (period = 63; period > 0; period--) {
  if (period_to_sec(period) >= secs)
   return period;
 }
 return 0;
}

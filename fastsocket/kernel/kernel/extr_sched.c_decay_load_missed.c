
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long DEGRADE_SHIFT ;
 unsigned long** degrade_factor ;
 unsigned long* degrade_zero_ticks ;

__attribute__((used)) static unsigned long
decay_load_missed(unsigned long load, unsigned long missed_updates, int idx)
{
 int j = 0;

 if (!missed_updates)
  return load;

 if (missed_updates >= degrade_zero_ticks[idx])
  return 0;

 if (idx == 1)
  return load >> missed_updates;

 while (missed_updates) {
  if (missed_updates % 2)
   load = (load * degrade_factor[idx][j]) >> DEGRADE_SHIFT;

  missed_updates >>= 1;
  j++;
 }
 return load;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXP_1 ;
 int EXP_15 ;
 int EXP_5 ;
 long FIXED_1 ;
 scalar_t__ LOAD_FREQ ;
 long atomic_long_read (int *) ;
 int * avenrun ;
 int calc_load (int ,int ,long) ;
 int calc_load_tasks ;
 int calc_load_update ;
 int jiffies ;
 scalar_t__ time_before (int ,unsigned long) ;

void calc_global_load(void)
{
 unsigned long upd = calc_load_update + 10;
 long active;

 if (time_before(jiffies, upd))
  return;

 active = atomic_long_read(&calc_load_tasks);
 active = active > 0 ? active * FIXED_1 : 0;

 avenrun[0] = calc_load(avenrun[0], EXP_1, active);
 avenrun[1] = calc_load(avenrun[1], EXP_5, active);
 avenrun[2] = calc_load(avenrun[2], EXP_15, active);

 calc_load_update += LOAD_FREQ;
}

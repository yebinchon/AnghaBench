
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct power_event {int state; int start_time; int end_time; int cpu; struct power_event* next; int type; } ;


 int PSTATE ;
 int* cpus_pstate_start_times ;
 int* cpus_pstate_state ;
 int first_time ;
 int max_freq ;
 int min_freq ;
 struct power_event* power_events ;
 int turbo_frequency ;
 struct power_event* zalloc (int) ;

__attribute__((used)) static void p_state_change(int cpu, u64 timestamp, u64 new_freq)
{
 struct power_event *pwr;

 if (new_freq > 8000000)
  return;

 pwr = zalloc(sizeof(*pwr));
 if (!pwr)
  return;

 pwr->state = cpus_pstate_state[cpu];
 pwr->start_time = cpus_pstate_start_times[cpu];
 pwr->end_time = timestamp;
 pwr->cpu = cpu;
 pwr->type = PSTATE;
 pwr->next = power_events;

 if (!pwr->start_time)
  pwr->start_time = first_time;

 power_events = pwr;

 cpus_pstate_state[cpu] = new_freq;
 cpus_pstate_start_times[cpu] = timestamp;

 if ((u64)new_freq > max_freq)
  max_freq = new_freq;

 if (new_freq < min_freq || min_freq == 0)
  min_freq = new_freq;

 if (new_freq == max_freq - 1000)
   turbo_frequency = max_freq;
}

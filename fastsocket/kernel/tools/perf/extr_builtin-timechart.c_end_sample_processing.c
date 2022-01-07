
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct power_event {size_t cpu; scalar_t__ state; scalar_t__ start_time; void* next; int type; void* end_time; } ;


 int CSTATE ;
 int PSTATE ;
 scalar_t__* cpus_cstate_start_times ;
 scalar_t__* cpus_cstate_state ;
 scalar_t__* cpus_pstate_start_times ;
 scalar_t__* cpus_pstate_state ;
 scalar_t__ first_time ;
 void* last_time ;
 scalar_t__ min_freq ;
 size_t numcpus ;
 void* power_events ;
 struct power_event* zalloc (int) ;

__attribute__((used)) static void end_sample_processing(void)
{
 u64 cpu;
 struct power_event *pwr;

 for (cpu = 0; cpu <= numcpus; cpu++) {
  pwr = zalloc(sizeof(*pwr));
  if (!pwr)
   return;

  pwr->state = cpus_pstate_state[cpu];
  pwr->start_time = cpus_pstate_start_times[cpu];
  pwr->end_time = last_time;
  pwr->cpu = cpu;
  pwr->type = PSTATE;
  pwr->next = power_events;

  if (!pwr->start_time)
   pwr->start_time = first_time;
  if (!pwr->state)
   pwr->state = min_freq;
  power_events = pwr;
 }
}

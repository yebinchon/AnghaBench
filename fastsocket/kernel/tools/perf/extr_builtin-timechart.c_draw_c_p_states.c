
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_event {scalar_t__ type; struct power_event* next; scalar_t__ state; int end_time; int start_time; int cpu; } ;


 scalar_t__ CSTATE ;
 scalar_t__ PSTATE ;
 scalar_t__ min_freq ;
 struct power_event* power_events ;
 int svg_cstate (int ,int ,int ,scalar_t__) ;
 int svg_pstate (int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void draw_c_p_states(void)
{
 struct power_event *pwr;
 pwr = power_events;




 while (pwr) {
  if (pwr->type == CSTATE)
   svg_cstate(pwr->cpu, pwr->start_time, pwr->end_time, pwr->state);
  pwr = pwr->next;
 }

 pwr = power_events;
 while (pwr) {
  if (pwr->type == PSTATE) {
   if (!pwr->state)
    pwr->state = min_freq;
   svg_pstate(pwr->cpu, pwr->start_time, pwr->end_time, pwr->state);
  }
  pwr = pwr->next;
 }
}

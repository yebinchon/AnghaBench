
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct trace_entry {int dummy; } ;
struct sched_switch {int prev_state; int next_pid; int prev_pid; } ;
struct per_pid {TYPE_1__* current; } ;
struct TYPE_2__ {scalar_t__ state; void* state_since; } ;


 scalar_t__ TYPE_BLOCKED ;
 scalar_t__ TYPE_NONE ;
 scalar_t__ TYPE_RUNNING ;
 scalar_t__ TYPE_WAITING ;
 struct per_pid* find_create_pid (int ) ;
 int pid_put_sample (int ,scalar_t__,int,void*,void*) ;

__attribute__((used)) static void sched_switch(int cpu, u64 timestamp, struct trace_entry *te)
{
 struct per_pid *p = ((void*)0), *prev_p;
 struct sched_switch *sw = (void *)te;


 prev_p = find_create_pid(sw->prev_pid);

 p = find_create_pid(sw->next_pid);

 if (prev_p->current && prev_p->current->state != TYPE_NONE)
  pid_put_sample(sw->prev_pid, TYPE_RUNNING, cpu, prev_p->current->state_since, timestamp);
 if (p && p->current) {
  if (p->current->state != TYPE_NONE)
   pid_put_sample(sw->next_pid, p->current->state, cpu, p->current->state_since, timestamp);

  p->current->state_since = timestamp;
  p->current->state = TYPE_RUNNING;
 }

 if (prev_p->current) {
  prev_p->current->state = TYPE_NONE;
  prev_p->current->state_since = timestamp;
  if (sw->prev_state & 2)
   prev_p->current->state = TYPE_BLOCKED;
  if (sw->prev_state == 0)
   prev_p->current->state = TYPE_WAITING;
 }
}

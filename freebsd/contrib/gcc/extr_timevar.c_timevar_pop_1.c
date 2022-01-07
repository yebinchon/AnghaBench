
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t timevar_id_t ;
struct timevar_time_def {int dummy; } ;
struct timevar_stack_def {struct timevar_stack_def* next; TYPE_1__* timevar; } ;
struct TYPE_2__ {int elapsed; } ;


 int gcc_assert (int) ;
 int get_time (struct timevar_time_def*) ;
 struct timevar_stack_def* stack ;
 struct timevar_time_def start_time ;
 int timevar_accumulate (int *,struct timevar_time_def*,struct timevar_time_def*) ;
 TYPE_1__* timevars ;
 struct timevar_stack_def* unused_stack_instances ;

void
timevar_pop_1 (timevar_id_t timevar)
{
  struct timevar_time_def now;
  struct timevar_stack_def *popped = stack;

  gcc_assert (&timevars[timevar] == stack->timevar);


  get_time (&now);


  timevar_accumulate (&popped->timevar->elapsed, &start_time, &now);



  start_time = now;


  stack = stack->next;



  popped->next = unused_stack_instances;
  unused_stack_instances = popped;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t timevar_id_t ;
struct timevar_time_def {int dummy; } ;
struct timevar_def {int start_time; int elapsed; int standalone; } ;


 int gcc_assert (int ) ;
 int get_time (struct timevar_time_def*) ;
 int timevar_accumulate (int *,int *,struct timevar_time_def*) ;
 int timevar_enable ;
 struct timevar_def* timevars ;

void
timevar_stop (timevar_id_t timevar)
{
  struct timevar_def *tv = &timevars[timevar];
  struct timevar_time_def now;

  if (!timevar_enable)
    return;


  gcc_assert (tv->standalone);

  get_time (&now);
  timevar_accumulate (&tv->elapsed, &tv->start_time, &now);
}

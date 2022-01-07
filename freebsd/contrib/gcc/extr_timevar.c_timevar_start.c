
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t timevar_id_t ;
struct timevar_def {int used; int standalone; int start_time; } ;


 int gcc_assert (int) ;
 int get_time (int *) ;
 int timevar_enable ;
 struct timevar_def* timevars ;

void
timevar_start (timevar_id_t timevar)
{
  struct timevar_def *tv = &timevars[timevar];

  if (!timevar_enable)
    return;


  tv->used = 1;



  gcc_assert (!tv->standalone);
  tv->standalone = 1;

  get_time (&tv->start_time);
}

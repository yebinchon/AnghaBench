
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timevar_time_def {scalar_t__ ggc_mem; scalar_t__ wall; scalar_t__ sys; scalar_t__ user; } ;



__attribute__((used)) static void
timevar_accumulate (struct timevar_time_def *timer,
      struct timevar_time_def *start_time,
      struct timevar_time_def *stop_time)
{
  timer->user += stop_time->user - start_time->user;
  timer->sys += stop_time->sys - start_time->sys;
  timer->wall += stop_time->wall - start_time->wall;
  timer->ggc_mem += stop_time->ggc_mem - start_time->ggc_mem;
}

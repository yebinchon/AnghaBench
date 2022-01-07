
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tms {void* tms_utime; void* tms_stime; } ;
struct timevar_time_def {int user; void* sys; void* wall; int ggc_mem; } ;
struct TYPE_4__ {int tv_usec; void* tv_sec; } ;
struct TYPE_3__ {int tv_sec; int tv_usec; } ;
struct rusage {TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;


 int RUSAGE_SELF ;
 int clock () ;
 int clocks_to_msec ;
 int getrusage (int ,struct rusage*) ;
 void* ticks_to_msec ;
 void* times (struct tms*) ;
 int timevar_enable ;
 int timevar_ggc_mem_total ;

__attribute__((used)) static void
get_time (struct timevar_time_def *now)
{
  now->user = 0;
  now->sys = 0;
  now->wall = 0;
  now->ggc_mem = timevar_ggc_mem_total;

  if (!timevar_enable)
    return;

  {
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {scalar_t__ signal_thread; } ;


 int inf_set_threads_resume_sc (struct inf*,scalar_t__,int ) ;

int
inf_set_threads_resume_sc_for_signal_thread (struct inf *inf)
{
  if (inf->signal_thread)
    {
      inf_set_threads_resume_sc (inf, inf->signal_thread, 0);
      return 1;
    }
  else
    return 0;
}

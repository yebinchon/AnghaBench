
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {int task; int threads_up_to_date; } ;


 int inf_validate_procs (struct inf*) ;

int
inf_update_procs (struct inf *inf)
{
  if (!inf->task)
    return 0;
  if (!inf->threads_up_to_date)
    inf_validate_procs (inf);
  return !!inf->task;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int procinfo ;


 int FLAG_SET ;
 int PR_RLC ;
 int proc_modify_flag (int *,int ,int ) ;

int
proc_set_run_on_last_close (procinfo *pi)
{
  return proc_modify_flag (pi, PR_RLC, FLAG_SET);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int procinfo ;


 int FLAG_RESET ;
 int PR_FORK ;
 int proc_modify_flag (int *,int ,int ) ;

int
proc_unset_inherit_on_fork (procinfo *pi)
{
  return proc_modify_flag (pi, PR_FORK, FLAG_RESET);
}

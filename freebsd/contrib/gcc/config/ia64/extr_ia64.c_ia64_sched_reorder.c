
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int FILE ;


 int ia64_dfa_sched_reorder (int *,int,int *,int*,int,int ) ;

__attribute__((used)) static int
ia64_sched_reorder (FILE *dump, int sched_verbose, rtx *ready, int *pn_ready,
      int clock_var)
{
  return ia64_dfa_sched_reorder (dump, sched_verbose, ready,
     pn_ready, clock_var, 0);
}

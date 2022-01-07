
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ n_insns ;
 scalar_t__ sched_n_insns ;

__attribute__((used)) static int
schedule_more_p (void)
{
  return sched_n_insns < n_insns;
}

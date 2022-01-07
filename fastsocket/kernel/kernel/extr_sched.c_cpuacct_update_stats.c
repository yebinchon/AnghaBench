
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef enum cpuacct_stat_index { ____Placeholder_cpuacct_stat_index } cpuacct_stat_index ;
typedef int cputime_t ;



__attribute__((used)) static inline void cpuacct_update_stats(struct task_struct *tsk,
  enum cpuacct_stat_index idx, cputime_t val) {}

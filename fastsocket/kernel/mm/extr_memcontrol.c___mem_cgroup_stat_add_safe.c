
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_stat_cpu {int* count; } ;
typedef enum mem_cgroup_stat_index { ____Placeholder_mem_cgroup_stat_index } mem_cgroup_stat_index ;



__attribute__((used)) static inline void __mem_cgroup_stat_add_safe(struct mem_cgroup_stat_cpu *stat,
  enum mem_cgroup_stat_index idx, int val)
{
 stat->count[idx] += val;
}

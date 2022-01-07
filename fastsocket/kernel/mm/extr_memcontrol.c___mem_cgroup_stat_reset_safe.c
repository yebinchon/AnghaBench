
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_stat_cpu {scalar_t__* count; } ;
typedef enum mem_cgroup_stat_index { ____Placeholder_mem_cgroup_stat_index } mem_cgroup_stat_index ;



__attribute__((used)) static inline void
__mem_cgroup_stat_reset_safe(struct mem_cgroup_stat_cpu *stat,
    enum mem_cgroup_stat_index idx)
{
 stat->count[idx] = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_stat {int dummy; } ;
typedef scalar_t__ s64 ;


 int MEM_CGROUP_STAT_CACHE ;
 int MEM_CGROUP_STAT_RSS ;
 scalar_t__ mem_cgroup_read_stat (struct mem_cgroup_stat*,int ) ;

__attribute__((used)) static s64 mem_cgroup_local_usage(struct mem_cgroup_stat *stat)
{
 s64 ret;

 ret = mem_cgroup_read_stat(stat, MEM_CGROUP_STAT_CACHE);
 ret += mem_cgroup_read_stat(stat, MEM_CGROUP_STAT_RSS);
 return ret;
}

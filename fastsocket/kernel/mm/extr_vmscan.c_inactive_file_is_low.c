
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_zone {int zone; int mem_cgroup; } ;


 int inactive_file_is_low_global (int ) ;
 int mem_cgroup_inactive_file_is_low (int ,int ) ;
 int scanning_global_lru (struct mem_cgroup_zone*) ;

__attribute__((used)) static int inactive_file_is_low(struct mem_cgroup_zone *mz)
{
 if (!scanning_global_lru(mz))
  return mem_cgroup_inactive_file_is_low(mz->mem_cgroup,
             mz->zone);

 return inactive_file_is_low_global(mz->zone);
}

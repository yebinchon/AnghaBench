
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_zone {int dummy; } ;


 int inactive_anon_is_low (struct mem_cgroup_zone*) ;
 int inactive_file_is_low (struct mem_cgroup_zone*) ;

__attribute__((used)) static int inactive_list_is_low(struct mem_cgroup_zone *mz, int file)
{
 if (file)
  return inactive_file_is_low(mz);
 else
  return inactive_anon_is_low(mz);
}

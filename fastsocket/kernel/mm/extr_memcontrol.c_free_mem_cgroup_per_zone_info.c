
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * nodeinfo; } ;
struct mem_cgroup {TYPE_1__ info; } ;


 int kfree (int ) ;

__attribute__((used)) static void free_mem_cgroup_per_zone_info(struct mem_cgroup *mem, int node)
{
 kfree(mem->info.nodeinfo[node]);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mem_cgroup_per_zone {int dummy; } ;
struct TYPE_4__ {TYPE_1__** nodeinfo; } ;
struct mem_cgroup {TYPE_2__ info; } ;
struct TYPE_3__ {struct mem_cgroup_per_zone* zoneinfo; } ;



__attribute__((used)) static struct mem_cgroup_per_zone *
mem_cgroup_zoneinfo(struct mem_cgroup *mem, int nid, int zid)
{
 return &mem->info.nodeinfo[nid]->zoneinfo[zid];
}

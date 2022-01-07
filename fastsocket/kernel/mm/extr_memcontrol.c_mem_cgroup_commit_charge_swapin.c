
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;


 int MEM_CGROUP_CHARGE_TYPE_MAPPED ;
 int __mem_cgroup_commit_charge_swapin (struct page*,struct mem_cgroup*,int ) ;

void mem_cgroup_commit_charge_swapin(struct page *page, struct mem_cgroup *ptr)
{
 __mem_cgroup_commit_charge_swapin(page, ptr,
     MEM_CGROUP_CHARGE_TYPE_MAPPED);
}

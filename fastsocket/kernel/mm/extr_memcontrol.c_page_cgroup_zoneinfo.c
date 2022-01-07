
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mem_cgroup_per_zone {int dummy; } ;
struct mem_cgroup {int dummy; } ;


 struct mem_cgroup_per_zone* mem_cgroup_zoneinfo (struct mem_cgroup*,int,int) ;
 int page_to_nid (struct page*) ;
 int page_zonenum (struct page*) ;

__attribute__((used)) static struct mem_cgroup_per_zone *
page_cgroup_zoneinfo(struct mem_cgroup *mem, struct page *page)
{
 int nid = page_to_nid(page);
 int zid = page_zonenum(page);

 return mem_cgroup_zoneinfo(mem, nid, zid);
}

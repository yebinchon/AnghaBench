
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zonelist {int * _zonerefs; } ;
struct page {int dummy; } ;
typedef int gfp_t ;


 int NUMA_INTERLEAVE_HIT ;
 struct page* __alloc_pages (int ,unsigned int,struct zonelist*) ;
 int inc_zone_page_state (struct page*,int ) ;
 struct zonelist* node_zonelist (unsigned int,int ) ;
 scalar_t__ page_zone (struct page*) ;
 scalar_t__ zonelist_zone (int *) ;

__attribute__((used)) static struct page *alloc_page_interleave(gfp_t gfp, unsigned order,
     unsigned nid)
{
 struct zonelist *zl;
 struct page *page;

 zl = node_zonelist(nid, gfp);
 page = __alloc_pages(gfp, order, zl);
 if (page && page_zone(page) == zonelist_zone(&zl->_zonerefs[0]))
  inc_zone_page_state(page, NUMA_INTERLEAVE_HIT);
 return page;
}

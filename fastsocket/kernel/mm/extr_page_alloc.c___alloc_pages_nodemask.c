
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zonelist {TYPE_1__* _zonerefs; } ;
struct zone {int dummy; } ;
struct page {int dummy; } ;
typedef int nodemask_t ;
typedef int gfp_t ;
typedef enum zone_type { ____Placeholder_zone_type } zone_type ;
struct TYPE_2__ {int zone; } ;


 int ALLOC_CPUSET ;
 int ALLOC_WMARK_LOW ;
 int __GFP_HARDWALL ;
 int __GFP_WAIT ;
 struct page* __alloc_pages_slowpath (int,unsigned int,struct zonelist*,int,int *,struct zone*,int) ;
 int allocflags_to_migratetype (int) ;
 int first_zones_zonelist (struct zonelist*,int,int *,struct zone**) ;
 int get_mems_allowed () ;
 struct page* get_page_from_freelist (int,int *,unsigned int,struct zonelist*,int,int,struct zone*,int) ;
 int gfp_allowed_mask ;
 int gfp_zone (int) ;
 int lockdep_trace_alloc (int) ;
 int might_sleep_if (int) ;
 int put_mems_allowed () ;
 scalar_t__ should_fail_alloc_page (int,unsigned int) ;
 int trace_mm_page_alloc (struct page*,unsigned int,int,int) ;
 scalar_t__ unlikely (int) ;

struct page *
__alloc_pages_nodemask(gfp_t gfp_mask, unsigned int order,
   struct zonelist *zonelist, nodemask_t *nodemask)
{
 enum zone_type high_zoneidx = gfp_zone(gfp_mask);
 struct zone *preferred_zone;
 struct page *page;
 int migratetype = allocflags_to_migratetype(gfp_mask);

 gfp_mask &= gfp_allowed_mask;

 lockdep_trace_alloc(gfp_mask);

 might_sleep_if(gfp_mask & __GFP_WAIT);

 if (should_fail_alloc_page(gfp_mask, order))
  return ((void*)0);






 if (unlikely(!zonelist->_zonerefs->zone))
  return ((void*)0);

 get_mems_allowed();

 first_zones_zonelist(zonelist, high_zoneidx, nodemask, &preferred_zone);
 if (!preferred_zone) {
  put_mems_allowed();
  return ((void*)0);
 }


 page = get_page_from_freelist(gfp_mask|__GFP_HARDWALL, nodemask, order,
   zonelist, high_zoneidx, ALLOC_WMARK_LOW|ALLOC_CPUSET,
   preferred_zone, migratetype);
 if (unlikely(!page))
  page = __alloc_pages_slowpath(gfp_mask, order,
    zonelist, high_zoneidx, nodemask,
    preferred_zone, migratetype);
 put_mems_allowed();

 trace_mm_page_alloc(page, order, gfp_mask, migratetype);
 return page;
}

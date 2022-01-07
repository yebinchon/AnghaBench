
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zonelist {int dummy; } ;
struct zone {int dummy; } ;
struct page {int dummy; } ;
typedef int nodemask_t ;
typedef int gfp_t ;
typedef enum zone_type { ____Placeholder_zone_type } zone_type ;


 int ALLOC_CPUSET ;
 int ALLOC_WMARK_HIGH ;
 unsigned int PAGE_ALLOC_COSTLY_ORDER ;
 int __GFP_HARDWALL ;
 int __GFP_NOFAIL ;
 int __GFP_THISNODE ;
 int clear_zonelist_oom (struct zonelist*,int) ;
 struct page* get_page_from_freelist (int,int *,unsigned int,struct zonelist*,int,int,struct zone*,int) ;
 int out_of_memory (struct zonelist*,int,unsigned int,int *) ;
 int schedule_timeout_uninterruptible (int) ;
 int try_set_zonelist_oom (struct zonelist*,int) ;

__attribute__((used)) static inline struct page *
__alloc_pages_may_oom(gfp_t gfp_mask, unsigned int order,
 struct zonelist *zonelist, enum zone_type high_zoneidx,
 nodemask_t *nodemask, struct zone *preferred_zone,
 int migratetype)
{
 struct page *page;


 if (!try_set_zonelist_oom(zonelist, gfp_mask)) {
  schedule_timeout_uninterruptible(1);
  return ((void*)0);
 }






 page = get_page_from_freelist(gfp_mask|__GFP_HARDWALL, nodemask,
  order, zonelist, high_zoneidx,
  ALLOC_WMARK_HIGH|ALLOC_CPUSET,
  preferred_zone, migratetype);
 if (page)
  goto out;

 if (!(gfp_mask & __GFP_NOFAIL)) {

  if (order > PAGE_ALLOC_COSTLY_ORDER)
   goto out;







  if (gfp_mask & __GFP_THISNODE)
   goto out;
 }

 out_of_memory(zonelist, gfp_mask, order, nodemask);

out:
 clear_zonelist_oom(zonelist, gfp_mask);
 return page;
}

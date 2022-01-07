
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


 int ALLOC_NO_WATERMARKS ;
 int BLK_RW_ASYNC ;
 int HZ ;
 int __GFP_NOFAIL ;
 struct page* get_page_from_freelist (int,int *,unsigned int,struct zonelist*,int,int ,struct zone*,int) ;
 int wait_iff_congested (struct zone*,int ,int) ;

__attribute__((used)) static inline struct page *
__alloc_pages_high_priority(gfp_t gfp_mask, unsigned int order,
 struct zonelist *zonelist, enum zone_type high_zoneidx,
 nodemask_t *nodemask, struct zone *preferred_zone,
 int migratetype)
{
 struct page *page;

 do {
  page = get_page_from_freelist(gfp_mask, nodemask, order,
   zonelist, high_zoneidx, ALLOC_NO_WATERMARKS,
   preferred_zone, migratetype);

  if (!page && gfp_mask & __GFP_NOFAIL) {
   wait_iff_congested(preferred_zone, BLK_RW_ASYNC, HZ/50);
  }
 } while (!page && (gfp_mask & __GFP_NOFAIL));

 return page;
}

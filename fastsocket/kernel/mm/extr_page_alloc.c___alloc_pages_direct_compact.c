
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



__attribute__((used)) static inline struct page *
__alloc_pages_direct_compact(gfp_t gfp_mask, unsigned int order,
 struct zonelist *zonelist, enum zone_type high_zoneidx,
 nodemask_t *nodemask, int alloc_flags, struct zone *preferred_zone,
 int migratetype, bool sync_migration,
 bool *contended_compaction, bool *deferred_compaction,
 unsigned long *did_some_progress)
{
 return ((void*)0);
}

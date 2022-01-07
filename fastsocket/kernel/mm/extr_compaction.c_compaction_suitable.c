
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;


 unsigned long COMPACT_CONTINUE ;
 unsigned long COMPACT_PARTIAL ;
 unsigned long COMPACT_SKIPPED ;
 int fragmentation_index (struct zone*,int) ;
 unsigned long low_wmark_pages (struct zone*) ;
 int sysctl_extfrag_threshold ;
 scalar_t__ zone_watermark_ok (struct zone*,int,unsigned long,int ,int ) ;

unsigned long compaction_suitable(struct zone *zone, int order)
{
 int fragindex;
 unsigned long watermark;





 if (order == -1)
  return COMPACT_CONTINUE;






 watermark = low_wmark_pages(zone) + (2UL << order);
 if (!zone_watermark_ok(zone, 0, watermark, 0, 0))
  return COMPACT_SKIPPED;
 fragindex = fragmentation_index(zone, order);
 if (fragindex >= 0 && fragindex <= sysctl_extfrag_threshold)
  return COMPACT_SKIPPED;

 if (fragindex == -1 && zone_watermark_ok(zone, order, watermark, 0, 0))
  return COMPACT_PARTIAL;

 return COMPACT_CONTINUE;
}

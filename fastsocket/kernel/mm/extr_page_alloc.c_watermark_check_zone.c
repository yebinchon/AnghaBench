
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;


 scalar_t__ likely (int) ;
 int low_wmark_pages (struct zone*) ;
 int waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;
 int watermark_wq ;
 scalar_t__ zone_watermark_ok (struct zone*,int ,int ,int ,int ) ;

__attribute__((used)) static inline void watermark_check_zone(struct zone *zone)
{

 if (likely(!waitqueue_active(&watermark_wq)))
  return;


 if (zone_watermark_ok(zone, 0, low_wmark_pages(zone), 0, 0))
  wake_up_interruptible(&watermark_wq);
}

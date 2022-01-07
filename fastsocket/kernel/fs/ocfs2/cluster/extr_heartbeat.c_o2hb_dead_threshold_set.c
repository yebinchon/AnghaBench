
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int O2HB_MIN_DEAD_THRESHOLD ;
 scalar_t__ list_empty (int *) ;
 int o2hb_all_regions ;
 unsigned int o2hb_dead_threshold ;
 int o2hb_live_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void o2hb_dead_threshold_set(unsigned int threshold)
{
 if (threshold > O2HB_MIN_DEAD_THRESHOLD) {
  spin_lock(&o2hb_live_lock);
  if (list_empty(&o2hb_all_regions))
   o2hb_dead_threshold = threshold;
  spin_unlock(&o2hb_live_lock);
 }
}

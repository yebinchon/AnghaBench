
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {int hr_item; } ;


 struct o2hb_region* o2hb_find_region (char const*) ;
 int o2hb_live_lock ;
 int o2nm_undepend_item (int *) ;
 int o2nm_undepend_this_node () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void o2hb_region_put(const char *region_uuid)
{
 struct o2hb_region *reg;

 spin_lock(&o2hb_live_lock);

 reg = o2hb_find_region(region_uuid);

 spin_unlock(&o2hb_live_lock);

 if (reg) {
  o2nm_undepend_item(&reg->hr_item);
  o2nm_undepend_this_node();
 }
}

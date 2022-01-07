
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {int hr_item; } ;


 int ENOENT ;
 struct o2hb_region* o2hb_find_region (char const*) ;
 int o2hb_live_lock ;
 int o2nm_depend_item (int *) ;
 int o2nm_depend_this_node () ;
 int o2nm_undepend_this_node () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int o2hb_region_get(const char *region_uuid)
{
 int ret = 0;
 struct o2hb_region *reg;

 spin_lock(&o2hb_live_lock);

 reg = o2hb_find_region(region_uuid);
 if (!reg)
  ret = -ENOENT;
 spin_unlock(&o2hb_live_lock);

 if (ret)
  goto out;

 ret = o2nm_depend_this_node();
 if (ret)
  goto out;

 ret = o2nm_depend_item(&reg->hr_item);
 if (ret)
  o2nm_undepend_this_node();

out:
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
struct o2hb_region {struct config_item hr_item; int hr_all_item; } ;
struct config_group {int dummy; } ;


 int ENOMEM ;
 struct config_item* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int config_item_init_type_name (struct config_item*,char const*,int *) ;
 struct o2hb_region* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int o2hb_all_regions ;
 int o2hb_live_lock ;
 int o2hb_region_type ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct config_item *o2hb_heartbeat_group_make_item(struct config_group *group,
         const char *name)
{
 struct o2hb_region *reg = ((void*)0);

 reg = kzalloc(sizeof(struct o2hb_region), GFP_KERNEL);
 if (reg == ((void*)0))
  return ERR_PTR(-ENOMEM);

 config_item_init_type_name(&reg->hr_item, name, &o2hb_region_type);

 spin_lock(&o2hb_live_lock);
 list_add_tail(&reg->hr_all_item, &o2hb_all_regions);
 spin_unlock(&o2hb_live_lock);

 return &reg->hr_item;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct requirement_list {int list; int name; scalar_t__ value; } ;
typedef scalar_t__ s32 ;
struct TYPE_3__ {int list; } ;
struct TYPE_4__ {TYPE_1__ requirements; scalar_t__ default_value; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PM_QOS_DEFAULT_VALUE ;
 int kfree (struct requirement_list*) ;
 int kstrdup (char*,int ) ;
 struct requirement_list* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 TYPE_2__** pm_qos_array ;
 int pm_qos_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_target (int) ;

int pm_qos_add_requirement(int pm_qos_class, char *name, s32 value)
{
 struct requirement_list *dep;
 unsigned long flags;

 dep = kzalloc(sizeof(struct requirement_list), GFP_KERNEL);
 if (dep) {
  if (value == PM_QOS_DEFAULT_VALUE)
   dep->value = pm_qos_array[pm_qos_class]->default_value;
  else
   dep->value = value;
  dep->name = kstrdup(name, GFP_KERNEL);
  if (!dep->name)
   goto cleanup;

  spin_lock_irqsave(&pm_qos_lock, flags);
  list_add(&dep->list,
   &pm_qos_array[pm_qos_class]->requirements.list);
  spin_unlock_irqrestore(&pm_qos_lock, flags);
  update_target(pm_qos_class);

  return 0;
 }

cleanup:
 kfree(dep);
 return -ENOMEM;
}

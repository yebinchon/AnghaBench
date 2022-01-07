
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct o2hb_region {int hr_steady_iterations; struct task_struct* hr_task; } ;
struct config_item {int dummy; } ;
struct config_group {int dummy; } ;


 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int config_item_put (struct config_item*) ;
 int kthread_stop (struct task_struct*) ;
 int o2hb_live_lock ;
 int o2hb_steady_queue ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct o2hb_region* to_o2hb_region (struct config_item*) ;
 int wake_up (int *) ;

__attribute__((used)) static void o2hb_heartbeat_group_drop_item(struct config_group *group,
        struct config_item *item)
{
 struct task_struct *hb_task;
 struct o2hb_region *reg = to_o2hb_region(item);


 spin_lock(&o2hb_live_lock);
 hb_task = reg->hr_task;
 reg->hr_task = ((void*)0);
 spin_unlock(&o2hb_live_lock);

 if (hb_task)
  kthread_stop(hb_task);





 if (atomic_read(&reg->hr_steady_iterations) != 0) {
  atomic_set(&reg->hr_steady_iterations, 0);
  wake_up(&o2hb_steady_queue);
 }

 config_item_put(item);
}

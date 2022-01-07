
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_obj {int node; } ;


 scalar_t__ ODEBUG_POOL_SIZE ;
 int debug_obj_work ;
 int hlist_add_head (int *,int *) ;
 scalar_t__ obj_cache ;
 int obj_pool ;
 scalar_t__ obj_pool_free ;
 int obj_pool_used ;
 int pool_lock ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int work_pending (int *) ;

__attribute__((used)) static void free_object(struct debug_obj *obj)
{
 unsigned long flags;
 int sched = 0;

 spin_lock_irqsave(&pool_lock, flags);




 if (obj_pool_free > ODEBUG_POOL_SIZE && obj_cache)
  sched = !work_pending(&debug_obj_work);
 hlist_add_head(&obj->node, &obj_pool);
 obj_pool_free++;
 obj_pool_used--;
 spin_unlock_irqrestore(&pool_lock, flags);
 if (sched)
  schedule_work(&debug_obj_work);
}

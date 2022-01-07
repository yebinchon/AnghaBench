
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_obj_descr {int fixup_free; } ;
struct debug_obj {int state; int node; } ;
struct debug_bucket {int lock; } ;
typedef enum debug_obj_state { ____Placeholder_debug_obj_state } debug_obj_state ;



 int debug_object_fixup (int ,void*,int) ;
 int debug_objects_enabled ;
 int debug_print_object (struct debug_obj*,char*) ;
 int free_object (struct debug_obj*) ;
 struct debug_bucket* get_bucket (unsigned long) ;
 int hlist_del (int *) ;
 struct debug_obj* lookup_object (void*,struct debug_bucket*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void debug_object_free(void *addr, struct debug_obj_descr *descr)
{
 enum debug_obj_state state;
 struct debug_bucket *db;
 struct debug_obj *obj;
 unsigned long flags;

 if (!debug_objects_enabled)
  return;

 db = get_bucket((unsigned long) addr);

 spin_lock_irqsave(&db->lock, flags);

 obj = lookup_object(addr, db);
 if (!obj)
  goto out_unlock;

 switch (obj->state) {
 case 128:
  debug_print_object(obj, "free");
  state = obj->state;
  spin_unlock_irqrestore(&db->lock, flags);
  debug_object_fixup(descr->fixup_free, addr, state);
  return;
 default:
  hlist_del(&obj->node);
  spin_unlock_irqrestore(&db->lock, flags);
  free_object(obj);
  return;
 }
out_unlock:
 spin_unlock_irqrestore(&db->lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_obj_descr {int fixup_destroy; } ;
struct debug_obj {int state; } ;
struct debug_bucket {int lock; } ;
typedef enum debug_obj_state { ____Placeholder_debug_obj_state } debug_obj_state ;







 int debug_object_fixup (int ,void*,int) ;
 int debug_objects_enabled ;
 int debug_print_object (struct debug_obj*,char*) ;
 struct debug_bucket* get_bucket (unsigned long) ;
 struct debug_obj* lookup_object (void*,struct debug_bucket*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void debug_object_destroy(void *addr, struct debug_obj_descr *descr)
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
 case 129:
 case 130:
  obj->state = 131;
  break;
 case 132:
  debug_print_object(obj, "destroy");
  state = obj->state;
  spin_unlock_irqrestore(&db->lock, flags);
  debug_object_fixup(descr->fixup_destroy, addr, state);
  return;

 case 131:
  debug_print_object(obj, "destroy");
  break;
 default:
  break;
 }
out_unlock:
 spin_unlock_irqrestore(&db->lock, flags);
}

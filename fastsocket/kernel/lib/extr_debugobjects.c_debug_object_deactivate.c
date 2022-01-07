
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_obj_descr {int dummy; } ;
struct debug_obj {int state; void* object; struct debug_obj_descr* descr; } ;
struct debug_bucket {int lock; } ;






 int ODEBUG_STATE_NOTAVAILABLE ;
 int debug_objects_enabled ;
 int debug_print_object (struct debug_obj*,char*) ;
 struct debug_bucket* get_bucket (unsigned long) ;
 struct debug_obj* lookup_object (void*,struct debug_bucket*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void debug_object_deactivate(void *addr, struct debug_obj_descr *descr)
{
 struct debug_bucket *db;
 struct debug_obj *obj;
 unsigned long flags;

 if (!debug_objects_enabled)
  return;

 db = get_bucket((unsigned long) addr);

 spin_lock_irqsave(&db->lock, flags);

 obj = lookup_object(addr, db);
 if (obj) {
  switch (obj->state) {
  case 128:
  case 129:
  case 131:
   obj->state = 129;
   break;

  case 130:
   debug_print_object(obj, "deactivate");
   break;
  default:
   break;
  }
 } else {
  struct debug_obj o = { .object = addr,
           .state = ODEBUG_STATE_NOTAVAILABLE,
           .descr = descr };

  debug_print_object(&o, "deactivate");
 }

 spin_unlock_irqrestore(&db->lock, flags);
}

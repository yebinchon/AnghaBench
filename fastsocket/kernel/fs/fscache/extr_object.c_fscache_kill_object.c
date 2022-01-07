
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_state {int dummy; } ;
struct fscache_object {scalar_t__ n_ops; scalar_t__ n_children; scalar_t__ n_in_progress; int dependents; int lock; scalar_t__ oob_event_mask; int flags; int debug_id; } ;


 int DROP_OBJECT ;
 int FSCACHE_OBJECT_IS_LIVE ;
 int KILL_DEPENDENTS ;
 int WAIT_FOR_CLEARANCE ;
 int _enter (char*,int ,scalar_t__,scalar_t__,int) ;
 int clear_bit (int ,int *) ;
 int fscache_start_operations (struct fscache_object*) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct fscache_state const* transit_to (int ) ;

__attribute__((used)) static const struct fscache_state *fscache_kill_object(struct fscache_object *object,
             int event)
{
 _enter("{OBJ%x,%d,%d},%d",
        object->debug_id, object->n_ops, object->n_children, event);

 clear_bit(FSCACHE_OBJECT_IS_LIVE, &object->flags);
 object->oob_event_mask = 0;

 if (list_empty(&object->dependents) &&
     object->n_ops == 0 &&
     object->n_children == 0)
  return transit_to(DROP_OBJECT);

 if (object->n_in_progress == 0) {
  spin_lock(&object->lock);
  if (object->n_ops > 0 && object->n_in_progress == 0)
   fscache_start_operations(object);
  spin_unlock(&object->lock);
 }

 if (!list_empty(&object->dependents))
  return transit_to(KILL_DEPENDENTS);

 return transit_to(WAIT_FOR_CLEARANCE);
}

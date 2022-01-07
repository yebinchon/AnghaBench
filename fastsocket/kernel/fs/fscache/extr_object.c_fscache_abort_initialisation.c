
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_state {int dummy; } ;
struct fscache_object {scalar_t__ oob_event_mask; int debug_id; } ;


 int KILL_OBJECT ;
 int _enter (char*,int ,int) ;
 int fscache_dequeue_object (struct fscache_object*) ;
 struct fscache_state const* transit_to (int ) ;

__attribute__((used)) static const struct fscache_state *fscache_abort_initialisation(struct fscache_object *object,
        int event)
{
 _enter("{OBJ%x},%d", object->debug_id, event);

 object->oob_event_mask = 0;
 fscache_dequeue_object(object);
 return transit_to(KILL_OBJECT);
}

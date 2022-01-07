
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fscache_state {int dummy; } ;
struct fscache_operation {int flags; } ;
struct fscache_object {int flags; TYPE_3__* cache; struct fscache_cookie* cookie; int debug_id; } ;
struct TYPE_4__ {int * rnode; } ;
struct fscache_cookie {int lock; int flags; TYPE_1__ stores; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int invalidate_object; } ;


 int ASSERT (int ) ;
 int FSCACHE_COOKIE_INVALIDATING ;
 int FSCACHE_COOKIE_NO_DATA_YET ;
 int FSCACHE_COOKIE_RETIRED ;
 int FSCACHE_OBJECT_IS_LIVE ;
 int FSCACHE_OBJECT_PENDING_WRITE ;
 int FSCACHE_OP_EXCLUSIVE ;
 int FSCACHE_OP_SLOW ;
 int FSCACHE_OP_UNUSE_COOKIE ;
 int GFP_KERNEL ;
 int KILL_OBJECT ;
 int UPDATE_OBJECT ;
 int _enter (char*,int ,int) ;
 int _leave (char*) ;
 int clear_bit (int ,int *) ;
 int fscache_cancel_all_ops (struct fscache_object*) ;
 int fscache_invalidate_writes (struct fscache_cookie*) ;
 int fscache_operation_init (struct fscache_operation*,int *) ;
 int fscache_operation_init_slow (struct fscache_operation*,int ) ;
 int fscache_put_operation (struct fscache_operation*) ;
 int fscache_set_op_name (struct fscache_operation*,char*) ;
 scalar_t__ fscache_submit_exclusive_op (struct fscache_object*,struct fscache_operation*) ;
 int fscache_unuse_cookie (struct fscache_object*) ;
 int fscache_use_cookie (struct fscache_object*) ;
 int kfree (struct fscache_operation*) ;
 struct fscache_operation* kzalloc (int,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 struct fscache_state const* transit_to (int ) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static const struct fscache_state *_fscache_invalidate_object(struct fscache_object *object,
             int event)
{
 struct fscache_operation *op;
 struct fscache_cookie *cookie = object->cookie;

 _enter("{OBJ%x},%d", object->debug_id, event);




 if (!fscache_use_cookie(object)) {
  ASSERT(object->cookie->stores.rnode == ((void*)0));
  set_bit(FSCACHE_COOKIE_RETIRED, &cookie->flags);
  _leave(" [no cookie]");
  return transit_to(KILL_OBJECT);
 }


 fscache_invalidate_writes(cookie);
 clear_bit(FSCACHE_OBJECT_PENDING_WRITE, &object->flags);
 fscache_cancel_all_ops(object);


 op = kzalloc(sizeof(*op), GFP_KERNEL);
 if (!op)
  goto nomem;

 fscache_operation_init(op, ((void*)0));
 fscache_operation_init_slow(op, object->cache->ops->invalidate_object);
 op->flags = FSCACHE_OP_SLOW |
  (1 << FSCACHE_OP_EXCLUSIVE) |
  (1 << FSCACHE_OP_UNUSE_COOKIE);
 fscache_set_op_name(op, "Inval");

 spin_lock(&cookie->lock);
 if (fscache_submit_exclusive_op(object, op) < 0)
  goto submit_op_failed;
 spin_unlock(&cookie->lock);
 fscache_put_operation(op);





 set_bit(FSCACHE_COOKIE_NO_DATA_YET, &cookie->flags);




 if (test_and_clear_bit(FSCACHE_COOKIE_INVALIDATING, &cookie->flags))
  wake_up_bit(&cookie->flags, FSCACHE_COOKIE_INVALIDATING);
 _leave(" [ok]");
 return transit_to(UPDATE_OBJECT);

nomem:
 clear_bit(FSCACHE_OBJECT_IS_LIVE, &object->flags);
 fscache_unuse_cookie(object);
 _leave(" [ENOMEM]");
 return transit_to(KILL_OBJECT);

submit_op_failed:
 clear_bit(FSCACHE_OBJECT_IS_LIVE, &object->flags);
 spin_unlock(&cookie->lock);
 kfree(op);
 _leave(" [EIO]");
 return transit_to(KILL_OBJECT);
}

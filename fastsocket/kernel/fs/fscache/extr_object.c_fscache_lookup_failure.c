
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fscache_state {int dummy; } ;
struct fscache_object {struct fscache_cookie* cookie; TYPE_2__* cache; scalar_t__ oob_event_mask; int debug_id; } ;
struct fscache_cookie {int flags; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* lookup_complete ) (struct fscache_object*) ;} ;


 int FSCACHE_COOKIE_LOOKING_UP ;
 int FSCACHE_COOKIE_UNAVAILABLE ;
 int KILL_OBJECT ;
 int _enter (char*,int ,int) ;
 int fscache_done_parent_op (struct fscache_object*) ;
 int fscache_n_cop_lookup_complete ;
 int fscache_stat (int *) ;
 int fscache_stat_d (int *) ;
 int set_bit (int ,int *) ;
 int stub1 (struct fscache_object*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 struct fscache_state const* transit_to (int ) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static const struct fscache_state *fscache_lookup_failure(struct fscache_object *object,
         int event)
{
 struct fscache_cookie *cookie;

 _enter("{OBJ%x},%d", object->debug_id, event);

 object->oob_event_mask = 0;

 fscache_stat(&fscache_n_cop_lookup_complete);
 object->cache->ops->lookup_complete(object);
 fscache_stat_d(&fscache_n_cop_lookup_complete);

 cookie = object->cookie;
 set_bit(FSCACHE_COOKIE_UNAVAILABLE, &cookie->flags);
 if (test_and_clear_bit(FSCACHE_COOKIE_LOOKING_UP, &cookie->flags))
  wake_up_bit(&cookie->flags, FSCACHE_COOKIE_LOOKING_UP);

 fscache_done_parent_op(object);
 return transit_to(KILL_OBJECT);
}

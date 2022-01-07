
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fscache_state {int dummy; } ;
struct fscache_object {scalar_t__ n_children; struct fscache_object* parent; int lock; int debug_id; int cache_link; int cookie_link; struct fscache_cache* cache; struct fscache_cookie* cookie; } ;
struct fscache_cookie {int flags; int lock; } ;
struct fscache_cache {TYPE_1__* ops; int object_list_lock; } ;
struct TYPE_2__ {int (* drop_object ) (struct fscache_object*) ;} ;


 int ASSERT (int) ;
 int FSCACHE_COOKIE_INVALIDATING ;
 int FSCACHE_OBJECT_EV_CLEARED ;
 int OBJECT_DEAD ;
 int _debug (char*,int ,scalar_t__) ;
 int _enter (char*,int ,scalar_t__,int) ;
 int _leave (char*) ;
 int fscache_n_cop_drop_object ;
 int fscache_n_object_dead ;
 int fscache_put_object (struct fscache_object*) ;
 int fscache_raise_event (struct fscache_object*,int ) ;
 int fscache_stat (int *) ;
 int fscache_stat_d (int *) ;
 int hlist_del_init (int *) ;
 int hlist_unhashed (int *) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct fscache_object*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 struct fscache_state const* transit_to (int ) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static const struct fscache_state *fscache_drop_object(struct fscache_object *object,
             int event)
{
 struct fscache_object *parent = object->parent;
 struct fscache_cookie *cookie = object->cookie;
 struct fscache_cache *cache = object->cache;
 bool awaken = 0;

 _enter("{OBJ%x,%d},%d", object->debug_id, object->n_children, event);

 ASSERT(cookie != ((void*)0));
 ASSERT(!hlist_unhashed(&object->cookie_link));




 spin_lock(&cookie->lock);
 hlist_del_init(&object->cookie_link);
 if (test_and_clear_bit(FSCACHE_COOKIE_INVALIDATING, &cookie->flags))
  awaken = 1;
 spin_unlock(&cookie->lock);

 if (awaken)
  wake_up_bit(&cookie->flags, FSCACHE_COOKIE_INVALIDATING);




 spin_lock(&object->lock);
 spin_unlock(&object->lock);


 spin_lock(&cache->object_list_lock);
 list_del_init(&object->cache_link);
 spin_unlock(&cache->object_list_lock);

 fscache_stat(&fscache_n_cop_drop_object);
 cache->ops->drop_object(object);
 fscache_stat_d(&fscache_n_cop_drop_object);


 if (parent) {
  _debug("release parent OBJ%x {%d}",
         parent->debug_id, parent->n_children);

  spin_lock(&parent->lock);
  parent->n_children--;
  if (parent->n_children == 0)
   fscache_raise_event(parent, FSCACHE_OBJECT_EV_CLEARED);
  spin_unlock(&parent->lock);
  object->parent = ((void*)0);
 }


 fscache_put_object(object);
 fscache_stat(&fscache_n_object_dead);

 _leave("");
 return transit_to(OBJECT_DEAD);
}

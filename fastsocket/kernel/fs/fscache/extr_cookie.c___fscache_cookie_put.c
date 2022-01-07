
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_cookie {int usage; int backing_objects; struct fscache_cookie* parent; } ;


 int BUG_ON (int) ;
 int _debug (char*,struct fscache_cookie*) ;
 int _enter (char*,struct fscache_cookie*) ;
 int _leave (char*) ;
 int atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int fscache_cookie_jar ;
 int hlist_empty (int *) ;
 int kmem_cache_free (int ,struct fscache_cookie*) ;

void __fscache_cookie_put(struct fscache_cookie *cookie)
{
 struct fscache_cookie *parent;

 _enter("%p", cookie);

 for (;;) {
  _debug("FREE COOKIE %p", cookie);
  parent = cookie->parent;
  BUG_ON(!hlist_empty(&cookie->backing_objects));
  kmem_cache_free(fscache_cookie_jar, cookie);

  if (!parent)
   break;

  cookie = parent;
  BUG_ON(atomic_read(&cookie->usage) <= 0);
  if (!atomic_dec_and_test(&cookie->usage))
   break;
 }

 _leave("");
}

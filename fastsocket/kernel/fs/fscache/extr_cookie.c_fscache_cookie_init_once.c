
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_cookie {int backing_objects; int stores_lock; int lock; } ;


 int INIT_HLIST_HEAD (int *) ;
 int memset (struct fscache_cookie*,int ,int) ;
 int spin_lock_init (int *) ;

void fscache_cookie_init_once(void *_cookie)
{
 struct fscache_cookie *cookie = _cookie;

 memset(cookie, 0, sizeof(*cookie));
 spin_lock_init(&cookie->lock);
 spin_lock_init(&cookie->stores_lock);
 INIT_HLIST_HEAD(&cookie->backing_objects);
}

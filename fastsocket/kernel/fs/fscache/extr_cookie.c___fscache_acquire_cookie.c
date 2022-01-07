
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_cookie_def {int type; int * name; int get_key; } ;
struct fscache_cookie {int n_children; struct fscache_cookie_def const* def; int stores; scalar_t__ flags; void* netfs_data; struct fscache_cookie* parent; int usage; int n_active; } ;


 int BUG_ON (int) ;


 int GFP_KERNEL ;
 int GFP_NOFS ;
 int INIT_RADIX_TREE (int *,int) ;
 int __GFP_WAIT ;
 int __fscache_cookie_put (struct fscache_cookie*) ;
 int _enter (char*,char*,int *,void*) ;
 int _leave (char*,...) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 scalar_t__ fscache_acquire_non_index_cookie (struct fscache_cookie*) ;
 int fscache_cookie_jar ;
 int fscache_n_acquires ;
 int fscache_n_acquires_nobufs ;
 int fscache_n_acquires_null ;
 int fscache_n_acquires_ok ;
 int fscache_n_acquires_oom ;
 int fscache_n_cookie_data ;
 int fscache_n_cookie_index ;
 int fscache_n_cookie_special ;
 int fscache_stat (int *) ;
 struct fscache_cookie* kmem_cache_alloc (int ,int ) ;

struct fscache_cookie *__fscache_acquire_cookie(
 struct fscache_cookie *parent,
 const struct fscache_cookie_def *def,
 void *netfs_data)
{
 struct fscache_cookie *cookie;

 BUG_ON(!def);

 _enter("{%s},{%s},%p",
        parent ? (char *) parent->def->name : "<no-parent>",
        def->name, netfs_data);

 fscache_stat(&fscache_n_acquires);


 if (!parent) {
  fscache_stat(&fscache_n_acquires_null);
  _leave(" [no parent]");
  return ((void*)0);
 }


 BUG_ON(!def->get_key);
 BUG_ON(!def->name[0]);

 BUG_ON(def->type == 128 &&
        parent->def->type != 128);


 cookie = kmem_cache_alloc(fscache_cookie_jar, GFP_KERNEL);
 if (!cookie) {
  fscache_stat(&fscache_n_acquires_oom);
  _leave(" [ENOMEM]");
  return ((void*)0);
 }

 atomic_set(&cookie->usage, 1);
 atomic_set(&cookie->n_children, 0);




 atomic_set(&cookie->n_active, 1);

 atomic_inc(&parent->usage);
 atomic_inc(&parent->n_children);

 cookie->def = def;
 cookie->parent = parent;
 cookie->netfs_data = netfs_data;
 cookie->flags = 0;



 INIT_RADIX_TREE(&cookie->stores, GFP_NOFS & ~__GFP_WAIT);

 switch (cookie->def->type) {
 case 128:
  fscache_stat(&fscache_n_cookie_index);
  break;
 case 129:
  fscache_stat(&fscache_n_cookie_data);
  break;
 default:
  fscache_stat(&fscache_n_cookie_special);
  break;
 }




 if (cookie->def->type != 128) {
  if (fscache_acquire_non_index_cookie(cookie) < 0) {
   atomic_dec(&parent->n_children);
   __fscache_cookie_put(cookie);
   fscache_stat(&fscache_n_acquires_nobufs);
   _leave(" = NULL");
   return ((void*)0);
  }
 }

 fscache_stat(&fscache_n_acquires_ok);
 _leave(" = %p", cookie);
 return cookie;
}

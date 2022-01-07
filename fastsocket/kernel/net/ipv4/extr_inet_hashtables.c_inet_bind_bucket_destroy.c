
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
struct inet_bind_bucket {int node; int owners; } ;


 int __hlist_del (int *) ;
 scalar_t__ hlist_empty (int *) ;
 int ib_net (struct inet_bind_bucket*) ;
 int kmem_cache_free (struct kmem_cache*,struct inet_bind_bucket*) ;
 int release_net (int ) ;

void inet_bind_bucket_destroy(struct kmem_cache *cachep, struct inet_bind_bucket *tb)
{
 if (hlist_empty(&tb->owners)) {
  __hlist_del(&tb->node);
  release_net(ib_net(tb));
  kmem_cache_free(cachep, tb);
 }
}

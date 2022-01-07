
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct kmem_cache {int dummy; } ;
struct inet_bind_hashbucket {int chain; } ;
struct inet_bind_bucket {unsigned short port; int node; int owners; scalar_t__ num_owners; scalar_t__ fastreuseport; scalar_t__ fastreuse; int ib_net; } ;


 int GFP_ATOMIC ;
 int INIT_HLIST_HEAD (int *) ;
 int hlist_add_head (int *,int *) ;
 int hold_net (struct net*) ;
 struct inet_bind_bucket* kmem_cache_alloc (struct kmem_cache*,int ) ;
 int write_pnet (int *,int ) ;

struct inet_bind_bucket *inet_bind_bucket_create(struct kmem_cache *cachep,
       struct net *net,
       struct inet_bind_hashbucket *head,
       const unsigned short snum)
{
 struct inet_bind_bucket *tb = kmem_cache_alloc(cachep, GFP_ATOMIC);

 if (tb != ((void*)0)) {
  write_pnet(&tb->ib_net, hold_net(net));
  tb->port = snum;
  tb->fastreuse = 0;
  tb->fastreuseport = 0;
  tb->num_owners = 0;
  INIT_HLIST_HEAD(&tb->owners);
  hlist_add_head(&tb->node, &head->chain);
 }
 return tb;
}

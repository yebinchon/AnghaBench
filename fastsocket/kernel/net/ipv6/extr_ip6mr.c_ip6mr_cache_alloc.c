
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net {int dummy; } ;
struct TYPE_3__ {int minvif; } ;
struct TYPE_4__ {TYPE_1__ res; } ;
struct mfc6_cache {TYPE_2__ mfc_un; } ;


 int GFP_KERNEL ;
 int MAXMIFS ;
 struct mfc6_cache* kmem_cache_zalloc (int ,int ) ;
 int mfc6_net_set (struct mfc6_cache*,struct net*) ;
 int mrt_cachep ;

__attribute__((used)) static struct mfc6_cache *ip6mr_cache_alloc(struct net *net)
{
 struct mfc6_cache *c = kmem_cache_zalloc(mrt_cachep, GFP_KERNEL);
 if (c == ((void*)0))
  return ((void*)0);
 c->mfc_un.res.minvif = MAXMIFS;
 mfc6_net_set(c, net);
 return c;
}

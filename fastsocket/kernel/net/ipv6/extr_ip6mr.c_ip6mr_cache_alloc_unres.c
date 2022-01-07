
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; int unresolved; } ;
struct TYPE_4__ {TYPE_1__ unres; } ;
struct mfc6_cache {TYPE_2__ mfc_un; } ;


 int GFP_ATOMIC ;
 int HZ ;
 scalar_t__ jiffies ;
 struct mfc6_cache* kmem_cache_zalloc (int ,int ) ;
 int mfc6_net_set (struct mfc6_cache*,struct net*) ;
 int mrt_cachep ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static struct mfc6_cache *ip6mr_cache_alloc_unres(struct net *net)
{
 struct mfc6_cache *c = kmem_cache_zalloc(mrt_cachep, GFP_ATOMIC);
 if (c == ((void*)0))
  return ((void*)0);
 skb_queue_head_init(&c->mfc_un.unres.unresolved);
 c->mfc_un.unres.expires = jiffies + 10 * HZ;
 mfc6_net_set(c, net);
 return c;
}

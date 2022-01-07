
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int all; } ;
struct xfrm_policy {int index; int byidx; int bydst; TYPE_1__ walk; int family; int selector; } ;
struct TYPE_4__ {int policy_hash_work; int * policy_count; struct hlist_head* policy_byidx; int policy_all; } ;
struct net {TYPE_2__ xfrm; } ;
struct hlist_head {int dummy; } ;


 int hlist_add_head (int *,struct hlist_head*) ;
 int idx_hash (struct net*,int ) ;
 int list_add (int *,int *) ;
 struct hlist_head* policy_hash_bysel (struct net*,int *,int ,int) ;
 int schedule_work (int *) ;
 scalar_t__ xfrm_bydst_should_resize (struct net*,int,int *) ;
 int xfrm_pol_hold (struct xfrm_policy*) ;
 struct net* xp_net (struct xfrm_policy*) ;

__attribute__((used)) static void __xfrm_policy_link(struct xfrm_policy *pol, int dir)
{
 struct net *net = xp_net(pol);
 struct hlist_head *chain = policy_hash_bysel(net, &pol->selector,
           pol->family, dir);

 list_add(&pol->walk.all, &net->xfrm.policy_all);
 hlist_add_head(&pol->bydst, chain);
 hlist_add_head(&pol->byidx, net->xfrm.policy_byidx+idx_hash(net, pol->index));
 net->xfrm.policy_count[dir]++;
 xfrm_pol_hold(pol);

 if (xfrm_bydst_should_resize(net, dir, ((void*)0)))
  schedule_work(&net->xfrm.policy_hash_work);
}

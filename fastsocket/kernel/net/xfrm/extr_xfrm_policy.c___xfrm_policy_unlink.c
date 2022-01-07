
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int all; } ;
struct xfrm_policy {TYPE_1__ walk; int byidx; int bydst; } ;
struct TYPE_4__ {int * policy_count; } ;
struct net {TYPE_2__ xfrm; } ;


 int hlist_del (int *) ;
 scalar_t__ hlist_unhashed (int *) ;
 int list_del (int *) ;
 struct net* xp_net (struct xfrm_policy*) ;

__attribute__((used)) static struct xfrm_policy *__xfrm_policy_unlink(struct xfrm_policy *pol,
      int dir)
{
 struct net *net = xp_net(pol);

 if (hlist_unhashed(&pol->bydst))
  return ((void*)0);

 hlist_del(&pol->bydst);
 hlist_del(&pol->byidx);
 list_del(&pol->walk.all);
 net->xfrm.policy_count[dir]--;

 return pol;
}

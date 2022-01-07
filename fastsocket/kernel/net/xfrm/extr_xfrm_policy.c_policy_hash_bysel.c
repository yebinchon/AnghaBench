
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfrm_selector {int dummy; } ;
struct TYPE_4__ {TYPE_1__* policy_bydst; struct hlist_head* policy_inexact; } ;
struct net {TYPE_2__ xfrm; } ;
struct hlist_head {int dummy; } ;
struct TYPE_3__ {unsigned int hmask; struct hlist_head* table; } ;


 unsigned int __sel_hash (struct xfrm_selector*,unsigned short,unsigned int) ;

__attribute__((used)) static struct hlist_head *policy_hash_bysel(struct net *net, struct xfrm_selector *sel, unsigned short family, int dir)
{
 unsigned int hmask = net->xfrm.policy_bydst[dir].hmask;
 unsigned int hash = __sel_hash(sel, family, hmask);

 return (hash == hmask + 1 ?
  &net->xfrm.policy_inexact[dir] :
  net->xfrm.policy_bydst[dir].table + hash);
}

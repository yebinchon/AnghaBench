
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfrm_address_t ;
struct TYPE_4__ {TYPE_1__* policy_bydst; } ;
struct net {TYPE_2__ xfrm; } ;
struct hlist_head {int dummy; } ;
struct TYPE_3__ {unsigned int hmask; struct hlist_head* table; } ;


 unsigned int __addr_hash (int *,int *,unsigned short,unsigned int) ;

__attribute__((used)) static struct hlist_head *policy_hash_direct(struct net *net, xfrm_address_t *daddr, xfrm_address_t *saddr, unsigned short family, int dir)
{
 unsigned int hmask = net->xfrm.policy_bydst[dir].hmask;
 unsigned int hash = __addr_hash(daddr, saddr, family, hmask);

 return net->xfrm.policy_bydst[dir].table + hash;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct hlist_head {int dummy; } ;
struct TYPE_2__ {int sdn_flags; } ;
struct dn_scp {int addrloc; TYPE_1__ addr; } ;


 struct dn_scp* DN_SK (struct sock*) ;
 size_t DN_SK_HASH_MASK ;
 int SDF_WILD ;
 struct hlist_head* dn_sk_hash ;
 struct hlist_head dn_wild_sk ;
 scalar_t__ hlist_empty (struct hlist_head*) ;
 size_t le16_to_cpu (int ) ;

__attribute__((used)) static struct hlist_head *dn_find_list(struct sock *sk)
{
 struct dn_scp *scp = DN_SK(sk);

 if (scp->addr.sdn_flags & SDF_WILD)
  return hlist_empty(&dn_wild_sk) ? &dn_wild_sk : ((void*)0);

 return &dn_sk_hash[le16_to_cpu(scp->addrloc) & DN_SK_HASH_MASK];
}

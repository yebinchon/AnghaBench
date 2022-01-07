
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_6__ {int cache_resolve_queue_len; } ;
struct net {TYPE_1__ ipv6; } ;
struct TYPE_9__ {int qlen; } ;
struct TYPE_7__ {TYPE_4__ unresolved; } ;
struct TYPE_8__ {TYPE_2__ unres; } ;
struct mfc6_cache {int mf6c_parent; TYPE_3__ mfc_un; struct mfc6_cache* next; int mf6c_mcastgrp; int mf6c_origin; } ;
typedef int mifi_t ;
struct TYPE_10__ {int daddr; int saddr; } ;


 int ENOBUFS ;
 int MRT6MSG_NOCACHE ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 struct mfc6_cache* ip6mr_cache_alloc_unres (struct net*) ;
 int ip6mr_cache_free (struct mfc6_cache*) ;
 int ip6mr_cache_report (struct net*,struct sk_buff*,int ,int ) ;
 int ipmr_do_expire_process (int) ;
 scalar_t__ ipv6_addr_equal (int *,int *) ;
 TYPE_5__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int mfc6_net (struct mfc6_cache*) ;
 int mfc_unres_lock ;
 struct mfc6_cache* mfc_unres_queue ;
 scalar_t__ net_eq (int ,struct net*) ;
 int skb_queue_tail (TYPE_4__*,struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
ip6mr_cache_unresolved(struct net *net, mifi_t mifi, struct sk_buff *skb)
{
 int err;
 struct mfc6_cache *c;

 spin_lock_bh(&mfc_unres_lock);
 for (c = mfc_unres_queue; c; c = c->next) {
  if (net_eq(mfc6_net(c), net) &&
      ipv6_addr_equal(&c->mf6c_mcastgrp, &ipv6_hdr(skb)->daddr) &&
      ipv6_addr_equal(&c->mf6c_origin, &ipv6_hdr(skb)->saddr))
   break;
 }

 if (c == ((void*)0)) {




  if (atomic_read(&net->ipv6.cache_resolve_queue_len) >= 10 ||
      (c = ip6mr_cache_alloc_unres(net)) == ((void*)0)) {
   spin_unlock_bh(&mfc_unres_lock);

   kfree_skb(skb);
   return -ENOBUFS;
  }




  c->mf6c_parent = -1;
  c->mf6c_origin = ipv6_hdr(skb)->saddr;
  c->mf6c_mcastgrp = ipv6_hdr(skb)->daddr;




  err = ip6mr_cache_report(net, skb, mifi, MRT6MSG_NOCACHE);
  if (err < 0) {



   spin_unlock_bh(&mfc_unres_lock);

   ip6mr_cache_free(c);
   kfree_skb(skb);
   return err;
  }

  atomic_inc(&net->ipv6.cache_resolve_queue_len);
  c->next = mfc_unres_queue;
  mfc_unres_queue = c;

  ipmr_do_expire_process(1);
 }




 if (c->mfc_un.unres.unresolved.qlen > 3) {
  kfree_skb(skb);
  err = -ENOBUFS;
 } else {
  skb_queue_tail(&c->mfc_un.unres.unresolved, skb);
  err = 0;
 }

 spin_unlock_bh(&mfc_unres_lock);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct net {int dummy; } ;
struct mr_table {scalar_t__ mroute_sk; } ;
struct mfc_cache {int dummy; } ;
struct TYPE_5__ {scalar_t__ router_alert; } ;
struct TYPE_8__ {int flags; TYPE_1__ opt; } ;
struct TYPE_7__ {scalar_t__ protocol; int daddr; int saddr; } ;
struct TYPE_6__ {int rt_flags; int fl; } ;


 int ENOBUFS ;
 int ENODEV ;
 int GFP_ATOMIC ;
 TYPE_4__* IPCB (struct sk_buff*) ;
 scalar_t__ IPPROTO_IGMP ;
 int IPSKB_FORWARDED ;
 int RTCF_LOCAL ;
 struct net* dev_net (int ) ;
 scalar_t__ ip_call_ra_chain (struct sk_buff*) ;
 TYPE_3__* ip_hdr (struct sk_buff*) ;
 int ip_local_deliver (struct sk_buff*) ;
 int ip_mr_forward (struct net*,struct mr_table*,struct sk_buff*,struct mfc_cache*,int) ;
 struct mfc_cache* ipmr_cache_find (struct mr_table*,int ,int ) ;
 int ipmr_cache_unresolved (struct mr_table*,int,struct sk_buff*) ;
 int ipmr_fib_lookup (struct net*,int *,struct mr_table**) ;
 int ipmr_find_vif (struct mr_table*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int mrt_lock ;
 int nf_reset (struct sk_buff*) ;
 int raw_rcv (scalar_t__,struct sk_buff*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 TYPE_2__* skb_rtable (struct sk_buff*) ;

int ip_mr_input(struct sk_buff *skb)
{
 struct mfc_cache *cache;
 struct net *net = dev_net(skb->dev);
 int local = skb_rtable(skb)->rt_flags & RTCF_LOCAL;
 struct mr_table *mrt;
 int err;




 if (IPCB(skb)->flags&IPSKB_FORWARDED)
  goto dont_forward;

 err = ipmr_fib_lookup(net, &skb_rtable(skb)->fl, &mrt);
 if (err < 0) {
  kfree_skb(skb);
  return err;
 }

 if (!local) {
      if (IPCB(skb)->opt.router_alert) {
       if (ip_call_ra_chain(skb))
        return 0;
      } else if (ip_hdr(skb)->protocol == IPPROTO_IGMP){






       read_lock(&mrt_lock);
       if (mrt->mroute_sk) {
        nf_reset(skb);
        raw_rcv(mrt->mroute_sk, skb);
        read_unlock(&mrt_lock);
        return 0;
       }
       read_unlock(&mrt_lock);
      }
 }

 read_lock(&mrt_lock);
 cache = ipmr_cache_find(mrt, ip_hdr(skb)->saddr, ip_hdr(skb)->daddr);




 if (cache == ((void*)0)) {
  int vif;

  if (local) {
   struct sk_buff *skb2 = skb_clone(skb, GFP_ATOMIC);
   ip_local_deliver(skb);
   if (skb2 == ((void*)0)) {
    read_unlock(&mrt_lock);
    return -ENOBUFS;
   }
   skb = skb2;
  }

  vif = ipmr_find_vif(mrt, skb->dev);
  if (vif >= 0) {
   int err = ipmr_cache_unresolved(mrt, vif, skb);
   read_unlock(&mrt_lock);

   return err;
  }
  read_unlock(&mrt_lock);
  kfree_skb(skb);
  return -ENODEV;
 }

 ip_mr_forward(net, mrt, skb, cache, local);

 read_unlock(&mrt_lock);

 if (local)
  return ip_local_deliver(skb);

 return 0;

dont_forward:
 if (local)
  return ip_local_deliver(skb);
 kfree_skb(skb);
 return 0;
}

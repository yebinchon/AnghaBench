
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {scalar_t__ dev; scalar_t__ len; } ;
struct net {int dummy; } ;
struct mr_table {TYPE_2__* vif_table; scalar_t__ mroute_do_pim; scalar_t__ mroute_do_assert; } ;
struct TYPE_9__ {int* ttls; int maxvif; int minvif; scalar_t__ last_assert; int wrong_if; int bytes; int pkt; } ;
struct TYPE_10__ {TYPE_3__ res; } ;
struct mfc_cache {int mfc_parent; TYPE_4__ mfc_un; } ;
struct TYPE_12__ {scalar_t__ ttl; } ;
struct TYPE_7__ {scalar_t__ iif; } ;
struct TYPE_11__ {TYPE_1__ fl; } ;
struct TYPE_8__ {scalar_t__ dev; int bytes_in; int pkt_in; } ;


 int GFP_ATOMIC ;
 int IGMPMSG_WRONGVIF ;
 scalar_t__ MFC_ASSERT_THRESH ;
 TYPE_6__* ip_hdr (struct sk_buff*) ;
 int ipmr_cache_report (struct mr_table*,struct sk_buff*,int,int ) ;
 int ipmr_find_vif (struct mr_table*,scalar_t__) ;
 int ipmr_queue_xmit (struct net*,struct mr_table*,struct sk_buff*,struct mfc_cache*,int) ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 TYPE_5__* skb_rtable (struct sk_buff*) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int ip_mr_forward(struct net *net, struct mr_table *mrt,
    struct sk_buff *skb, struct mfc_cache *cache,
    int local)
{
 int psend = -1;
 int vif, ct;

 vif = cache->mfc_parent;
 cache->mfc_un.res.pkt++;
 cache->mfc_un.res.bytes += skb->len;




 if (mrt->vif_table[vif].dev != skb->dev) {
  int true_vifi;

  if (skb_rtable(skb)->fl.iif == 0) {
   goto dont_forward;
  }

  cache->mfc_un.res.wrong_if++;
  true_vifi = ipmr_find_vif(mrt, skb->dev);

  if (true_vifi >= 0 && mrt->mroute_do_assert &&





      (mrt->mroute_do_pim ||
       cache->mfc_un.res.ttls[true_vifi] < 255) &&
      time_after(jiffies,
          cache->mfc_un.res.last_assert + MFC_ASSERT_THRESH)) {
   cache->mfc_un.res.last_assert = jiffies;
   ipmr_cache_report(mrt, skb, true_vifi, IGMPMSG_WRONGVIF);
  }
  goto dont_forward;
 }

 mrt->vif_table[vif].pkt_in++;
 mrt->vif_table[vif].bytes_in += skb->len;




 for (ct = cache->mfc_un.res.maxvif-1; ct >= cache->mfc_un.res.minvif; ct--) {
  if (ip_hdr(skb)->ttl > cache->mfc_un.res.ttls[ct]) {
   if (psend != -1) {
    struct sk_buff *skb2 = skb_clone(skb, GFP_ATOMIC);
    if (skb2)
     ipmr_queue_xmit(net, mrt, skb2, cache,
       psend);
   }
   psend = ct;
  }
 }
 if (psend != -1) {
  if (local) {
   struct sk_buff *skb2 = skb_clone(skb, GFP_ATOMIC);
   if (skb2)
    ipmr_queue_xmit(net, mrt, skb2, cache, psend);
  } else {
   ipmr_queue_xmit(net, mrt, skb, cache, psend);
   return 0;
  }
 }

dont_forward:
 if (!local)
  kfree_skb(skb);
 return 0;
}

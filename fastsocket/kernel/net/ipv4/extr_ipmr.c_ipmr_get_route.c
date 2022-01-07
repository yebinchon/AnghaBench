
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; } ;
struct rtmsg {int rtm_flags; } ;
struct rtable {int rt_dst; int rt_src; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct mr_table {int dummy; } ;
struct mfc_cache {int mfc_flags; } ;
struct iphdr {int ihl; scalar_t__ version; int daddr; int saddr; } ;


 int EAGAIN ;
 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int MFC_NOTIFY ;
 int RTM_F_NOTIFY ;
 int RT_TABLE_DEFAULT ;
 int __ipmr_fill_mroute (struct mr_table*,struct sk_buff*,struct mfc_cache*,struct rtmsg*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 struct mfc_cache* ipmr_cache_find (struct mr_table*,int ,int ) ;
 int ipmr_cache_unresolved (struct mr_table*,int,struct sk_buff*) ;
 int ipmr_find_vif (struct mr_table*,struct net_device*) ;
 struct mr_table* ipmr_get_table (struct net*,int ) ;
 int mrt_lock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 struct rtable* skb_rtable (struct sk_buff*) ;

int ipmr_get_route(struct net *net,
     struct sk_buff *skb, struct rtmsg *rtm, int nowait)
{
 int err;
 struct mr_table *mrt;
 struct mfc_cache *cache;
 struct rtable *rt = skb_rtable(skb);

 mrt = ipmr_get_table(net, RT_TABLE_DEFAULT);
 if (mrt == ((void*)0))
  return -ENOENT;

 read_lock(&mrt_lock);
 cache = ipmr_cache_find(mrt, rt->rt_src, rt->rt_dst);

 if (cache == ((void*)0)) {
  struct sk_buff *skb2;
  struct iphdr *iph;
  struct net_device *dev;
  int vif;

  if (nowait) {
   read_unlock(&mrt_lock);
   return -EAGAIN;
  }

  dev = skb->dev;
  if (dev == ((void*)0) || (vif = ipmr_find_vif(mrt, dev)) < 0) {
   read_unlock(&mrt_lock);
   return -ENODEV;
  }
  skb2 = skb_clone(skb, GFP_ATOMIC);
  if (!skb2) {
   read_unlock(&mrt_lock);
   return -ENOMEM;
  }

  skb_push(skb2, sizeof(struct iphdr));
  skb_reset_network_header(skb2);
  iph = ip_hdr(skb2);
  iph->ihl = sizeof(struct iphdr) >> 2;
  iph->saddr = rt->rt_src;
  iph->daddr = rt->rt_dst;
  iph->version = 0;
  err = ipmr_cache_unresolved(mrt, vif, skb2);
  read_unlock(&mrt_lock);
  return err;
 }

 if (!nowait && (rtm->rtm_flags&RTM_F_NOTIFY))
  cache->mfc_flags |= MFC_NOTIFY;
 err = __ipmr_fill_mroute(mrt, skb, cache, rtm);
 read_unlock(&mrt_lock);
 return err;
}

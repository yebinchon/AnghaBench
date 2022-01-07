
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; int protocol; int len; struct sock* sk; } ;
struct TYPE_6__ {struct net_device* dev; } ;
struct TYPE_7__ {TYPE_1__ dst; } ;
struct rtable {int rt_flags; TYPE_2__ u; } ;
struct net_device {int dummy; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {scalar_t__ mc_loop; } ;
struct TYPE_8__ {scalar_t__ ttl; } ;


 int ETH_P_IP ;
 int GFP_ATOMIC ;
 TYPE_5__* IPCB (struct sk_buff*) ;
 int IPSKB_FORWARDED ;
 int IPSKB_REROUTED ;
 int IPSTATS_MIB_OUT ;
 int IP_UPD_PO_STATS (int ,int ,int ) ;
 int NF_HOOK (int ,int ,struct sk_buff*,int *,struct net_device*,int ) ;
 int NF_HOOK_COND (int ,int ,struct sk_buff*,int *,struct net_device*,int ,int) ;
 int NF_INET_POST_ROUTING ;
 int PF_INET ;
 int RTCF_BROADCAST ;
 int RTCF_LOCAL ;
 int RTCF_MULTICAST ;
 int dev_net (struct net_device*) ;
 int htons (int ) ;
 TYPE_4__* inet_sk (struct sock*) ;
 int ip_dev_loopback_xmit ;
 int ip_finish_output ;
 TYPE_3__* ip_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 struct rtable* skb_rtable (struct sk_buff*) ;

int ip_mc_output(struct sk_buff *skb)
{
 struct sock *sk = skb->sk;
 struct rtable *rt = skb_rtable(skb);
 struct net_device *dev = rt->u.dst.dev;




 IP_UPD_PO_STATS(dev_net(dev), IPSTATS_MIB_OUT, skb->len);

 skb->dev = dev;
 skb->protocol = htons(ETH_P_IP);





 if (rt->rt_flags&RTCF_MULTICAST) {
  if ((!sk || inet_sk(sk)->mc_loop)
  ) {
   struct sk_buff *newskb = skb_clone(skb, GFP_ATOMIC);
   if (newskb)
    NF_HOOK(PF_INET, NF_INET_POST_ROUTING, newskb,
     ((void*)0), newskb->dev,
     ip_dev_loopback_xmit);
  }



  if (ip_hdr(skb)->ttl == 0) {
   kfree_skb(skb);
   return 0;
  }
 }

 if (rt->rt_flags&RTCF_BROADCAST) {
  struct sk_buff *newskb = skb_clone(skb, GFP_ATOMIC);
  if (newskb)
   NF_HOOK(PF_INET, NF_INET_POST_ROUTING, newskb, ((void*)0),
    newskb->dev, ip_dev_loopback_xmit);
 }

 return NF_HOOK_COND(PF_INET, NF_INET_POST_ROUTING, skb, ((void*)0), skb->dev,
       ip_finish_output,
       !(IPCB(skb)->flags & IPSKB_REROUTED));
}

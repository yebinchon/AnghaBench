
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {struct sock* v4_ctl_sk; } ;
struct net {TYPE_1__ dccp; } ;
struct iphdr {int saddr; int daddr; } ;
struct dst_entry {int dummy; } ;
struct TYPE_8__ {scalar_t__ dccph_type; int dccph_checksum; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {scalar_t__ rt_type; } ;


 int DCCP_INC_STATS_BH (int ) ;
 int DCCP_MIB_OUTRSTS ;
 int DCCP_MIB_OUTSEGS ;
 scalar_t__ DCCP_PKT_RESET ;
 scalar_t__ RTN_LOCAL ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct sk_buff* dccp_ctl_make_reset (struct sock*,struct sk_buff*) ;
 TYPE_4__* dccp_hdr (struct sk_buff*) ;
 int dccp_v4_csum_finish (struct sk_buff*,int ,int ) ;
 struct dst_entry* dccp_v4_route_skb (struct net*,struct sock*,struct sk_buff*) ;
 struct net* dev_net (int ) ;
 int dst_clone (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 int ip_build_and_send_pkt (struct sk_buff*,struct sock*,int ,int ,int *) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ net_xmit_eval (int) ;
 TYPE_3__* skb_dst (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,int ) ;
 TYPE_2__* skb_rtable (struct sk_buff*) ;

__attribute__((used)) static void dccp_v4_ctl_send_reset(struct sock *sk, struct sk_buff *rxskb)
{
 int err;
 const struct iphdr *rxiph;
 struct sk_buff *skb;
 struct dst_entry *dst;
 struct net *net = dev_net(skb_dst(rxskb)->dev);
 struct sock *ctl_sk = net->dccp.v4_ctl_sk;


 if (dccp_hdr(rxskb)->dccph_type == DCCP_PKT_RESET)
  return;

 if (skb_rtable(rxskb)->rt_type != RTN_LOCAL)
  return;

 dst = dccp_v4_route_skb(net, ctl_sk, rxskb);
 if (dst == ((void*)0))
  return;

 skb = dccp_ctl_make_reset(ctl_sk, rxskb);
 if (skb == ((void*)0))
  goto out;

 rxiph = ip_hdr(rxskb);
 dccp_hdr(skb)->dccph_checksum = dccp_v4_csum_finish(skb, rxiph->saddr,
         rxiph->daddr);
 skb_dst_set(skb, dst_clone(dst));

 bh_lock_sock(ctl_sk);
 err = ip_build_and_send_pkt(skb, ctl_sk,
        rxiph->daddr, rxiph->saddr, ((void*)0));
 bh_unlock_sock(ctl_sk);

 if (net_xmit_eval(err) == 0) {
  DCCP_INC_STATS_BH(DCCP_MIB_OUTSEGS);
  DCCP_INC_STATS_BH(DCCP_MIB_OUTRSTS);
 }
out:
  dst_release(dst);
}

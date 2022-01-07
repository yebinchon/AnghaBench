
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


struct sk_buff {int ip_summed; int csum; } ;
struct sec_path {int len; TYPE_4__** xvec; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_8__ {TYPE_1__ dst; } ;
struct rtable {int rt_flags; TYPE_2__ u; } ;
struct TYPE_11__ {scalar_t__ sysctl_icmp_echo_ignore_broadcasts; } ;
struct net {TYPE_5__ ipv4; } ;
struct iphdr {int dummy; } ;
struct icmphdr {size_t type; } ;
struct TYPE_12__ {int (* handler ) (struct sk_buff*) ;} ;
struct TYPE_9__ {int flags; } ;
struct TYPE_10__ {TYPE_3__ props; } ;




 int ICMPMSGIN_INC_STATS_BH (struct net*,size_t) ;
 size_t ICMP_ADDRESS ;
 size_t ICMP_ADDRESSREPLY ;
 size_t ICMP_ECHO ;
 int ICMP_INC_STATS_BH (struct net*,int ) ;
 int ICMP_MIB_INERRORS ;
 int ICMP_MIB_INMSGS ;
 size_t ICMP_TIMESTAMP ;
 size_t NR_ICMP_TYPES ;
 int RTCF_BROADCAST ;
 int RTCF_MULTICAST ;
 int XFRM_POLICY_IN ;
 int XFRM_STATE_ICMP ;
 int __skb_checksum_complete (struct sk_buff*) ;
 int csum_fold (int ) ;
 struct net* dev_net (int ) ;
 struct icmphdr* icmp_hdr (struct sk_buff*) ;
 TYPE_6__* icmp_pointers ;
 int kfree_skb (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int pskb_pull (struct sk_buff*,int) ;
 int skb_network_offset (struct sk_buff*) ;
 struct rtable* skb_rtable (struct sk_buff*) ;
 struct sec_path* skb_sec_path (struct sk_buff*) ;
 int skb_set_network_header (struct sk_buff*,int) ;
 int stub1 (struct sk_buff*) ;
 int xfrm4_policy_check (int *,int ,struct sk_buff*) ;
 int xfrm4_policy_check_reverse (int *,int ,struct sk_buff*) ;

int icmp_rcv(struct sk_buff *skb)
{
 struct icmphdr *icmph;
 struct rtable *rt = skb_rtable(skb);
 struct net *net = dev_net(rt->u.dst.dev);

 if (!xfrm4_policy_check(((void*)0), XFRM_POLICY_IN, skb)) {
  struct sec_path *sp = skb_sec_path(skb);
  int nh;

  if (!(sp && sp->xvec[sp->len - 1]->props.flags &
     XFRM_STATE_ICMP))
   goto drop;

  if (!pskb_may_pull(skb, sizeof(*icmph) + sizeof(struct iphdr)))
   goto drop;

  nh = skb_network_offset(skb);
  skb_set_network_header(skb, sizeof(*icmph));

  if (!xfrm4_policy_check_reverse(((void*)0), XFRM_POLICY_IN, skb))
   goto drop;

  skb_set_network_header(skb, nh);
 }

 ICMP_INC_STATS_BH(net, ICMP_MIB_INMSGS);

 switch (skb->ip_summed) {
 case 129:
  if (!csum_fold(skb->csum))
   break;

 case 128:
  skb->csum = 0;
  if (__skb_checksum_complete(skb))
   goto error;
 }

 if (!pskb_pull(skb, sizeof(*icmph)))
  goto error;

 icmph = icmp_hdr(skb);

 ICMPMSGIN_INC_STATS_BH(net, icmph->type);






 if (icmph->type > NR_ICMP_TYPES)
  goto error;






 if (rt->rt_flags & (RTCF_BROADCAST | RTCF_MULTICAST)) {






  if ((icmph->type == ICMP_ECHO ||
       icmph->type == ICMP_TIMESTAMP) &&
      net->ipv4.sysctl_icmp_echo_ignore_broadcasts) {
   goto error;
  }
  if (icmph->type != ICMP_ECHO &&
      icmph->type != ICMP_TIMESTAMP &&
      icmph->type != ICMP_ADDRESS &&
      icmph->type != ICMP_ADDRESSREPLY) {
   goto error;
  }
 }

 icmp_pointers[icmph->type].handler(skb);

drop:
 kfree_skb(skb);
 return 0;
error:
 ICMP_INC_STATS_BH(net, ICMP_MIB_INERRORS);
 goto drop;
}

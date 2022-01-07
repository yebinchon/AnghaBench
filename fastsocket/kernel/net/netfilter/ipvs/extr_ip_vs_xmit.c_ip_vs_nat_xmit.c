
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int len; int local_df; } ;
struct TYPE_9__ {TYPE_1__* dev; } ;
struct TYPE_7__ {TYPE_4__ dst; } ;
struct rtable {TYPE_2__ u; } ;
struct iphdr {int ihl; int frag_off; int daddr; int tos; } ;
struct ip_vs_protocol {int (* dnat_handler ) (struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_conn*) ;} ;
struct TYPE_8__ {int ip; } ;
struct ip_vs_conn {int flags; TYPE_3__ daddr; } ;
typedef int _pt ;
typedef int __be16 ;
struct TYPE_6__ {int hard_header_len; } ;


 int EnterFunction (int) ;
 int ICMP_DEST_UNREACH ;
 int ICMP_FRAG_NEEDED ;
 int IP_DF ;
 int IP_VS_CONN_F_NO_CPORT ;
 int IP_VS_DBG (int,char*,int ) ;
 int IP_VS_DBG_PKT (int,struct ip_vs_protocol*,struct sk_buff*,int ,char*) ;
 int IP_VS_DBG_RL_PKT (int ,struct ip_vs_protocol*,struct sk_buff*,int ,char*) ;
 int IP_VS_XMIT (int ,struct sk_buff*,struct rtable*) ;
 int LeaveFunction (int) ;
 int NF_STOLEN ;
 int PF_INET ;
 int RT_TOS (int ) ;
 struct rtable* __ip_vs_get_out_rt (struct sk_buff*,struct ip_vs_conn*,int ) ;
 int dst_link_failure (struct sk_buff*) ;
 int dst_mtu (TYPE_4__*) ;
 int htonl (int) ;
 int htons (int ) ;
 int icmp_send (struct sk_buff*,int ,int ,int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_rt_put (struct rtable*) ;
 int ip_send_check (struct iphdr*) ;
 int ip_vs_conn_fill_cport (struct ip_vs_conn*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int ntohs (int ) ;
 scalar_t__ skb_cow (struct sk_buff*,int ) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,TYPE_4__*) ;
 int * skb_header_pointer (struct sk_buff*,int,int,int *) ;
 int skb_is_gso (struct sk_buff*) ;
 int skb_make_writable (struct sk_buff*,int) ;
 int stub1 (struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_conn*) ;
 scalar_t__ unlikely (int) ;

int
ip_vs_nat_xmit(struct sk_buff *skb, struct ip_vs_conn *cp,
        struct ip_vs_protocol *pp)
{
 struct rtable *rt;
 int mtu;
 struct iphdr *iph = ip_hdr(skb);

 EnterFunction(10);


 if (unlikely(cp->flags & IP_VS_CONN_F_NO_CPORT)) {
  __be16 _pt, *p;
  p = skb_header_pointer(skb, iph->ihl*4, sizeof(_pt), &_pt);
  if (p == ((void*)0))
   goto tx_error;
  ip_vs_conn_fill_cport(cp, *p);
  IP_VS_DBG(10, "filled cport=%d\n", ntohs(*p));
 }

 if (!(rt = __ip_vs_get_out_rt(skb, cp, RT_TOS(iph->tos))))
  goto tx_error_icmp;


 mtu = dst_mtu(&rt->u.dst);
 if ((skb->len > mtu) && (iph->frag_off & htons(IP_DF)) &&
     !skb_is_gso(skb)) {
  ip_rt_put(rt);
  icmp_send(skb, ICMP_DEST_UNREACH,ICMP_FRAG_NEEDED, htonl(mtu));
  IP_VS_DBG_RL_PKT(0, pp, skb, 0, "ip_vs_nat_xmit(): frag needed for");
  goto tx_error;
 }


 if (!skb_make_writable(skb, sizeof(struct iphdr)))
  goto tx_error_put;

 if (skb_cow(skb, rt->u.dst.dev->hard_header_len))
  goto tx_error_put;


 skb_dst_drop(skb);
 skb_dst_set(skb, &rt->u.dst);


 if (pp->dnat_handler && !pp->dnat_handler(skb, pp, cp))
  goto tx_error;
 ip_hdr(skb)->daddr = cp->daddr.ip;
 ip_send_check(ip_hdr(skb));

 IP_VS_DBG_PKT(10, pp, skb, 0, "After DNAT");






 skb->local_df = 1;

 IP_VS_XMIT(PF_INET, skb, rt);

 LeaveFunction(10);
 return NF_STOLEN;

  tx_error_icmp:
 dst_link_failure(skb);
  tx_error:
 LeaveFunction(10);
 kfree_skb(skb);
 return NF_STOLEN;
  tx_error_put:
 ip_rt_put(rt);
 goto tx_error;
}

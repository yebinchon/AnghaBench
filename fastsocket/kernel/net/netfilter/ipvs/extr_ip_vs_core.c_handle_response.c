
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int ipvs_property; } ;
struct ip_vs_protocol {int (* snat_handler ) (struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_conn*) ;} ;
struct TYPE_5__ {int ip; int in6; } ;
struct ip_vs_conn {TYPE_1__ vaddr; } ;
struct TYPE_7__ {int saddr; } ;
struct TYPE_6__ {int saddr; } ;


 int AF_INET6 ;
 int IP_VS_DBG_PKT (int,struct ip_vs_protocol*,struct sk_buff*,int ,char*) ;
 int IP_VS_DIR_OUTPUT ;
 int LeaveFunction (int) ;
 unsigned int NF_ACCEPT ;
 unsigned int NF_STOLEN ;
 int RTN_LOCAL ;
 scalar_t__ ip6_route_me_harder (struct sk_buff*) ;
 TYPE_3__* ip_hdr (struct sk_buff*) ;
 scalar_t__ ip_route_me_harder (struct sk_buff*,int ) ;
 int ip_send_check (TYPE_3__*) ;
 int ip_vs_conn_put (struct ip_vs_conn*) ;
 int ip_vs_out_stats (struct ip_vs_conn*,struct sk_buff*) ;
 int ip_vs_set_state (struct ip_vs_conn*,int ,struct sk_buff*,struct ip_vs_protocol*) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_make_writable (struct sk_buff*,int) ;
 int stub1 (struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_conn*) ;

__attribute__((used)) static unsigned int
handle_response(int af, struct sk_buff *skb, struct ip_vs_protocol *pp,
  struct ip_vs_conn *cp, int ihl)
{
 IP_VS_DBG_PKT(11, pp, skb, 0, "Outgoing packet");

 if (!skb_make_writable(skb, ihl))
  goto drop;


 if (pp->snat_handler && !pp->snat_handler(skb, pp, cp))
  goto drop;






 {
  ip_hdr(skb)->saddr = cp->vaddr.ip;
  ip_send_check(ip_hdr(skb));
 }
  if (ip_route_me_harder(skb, RTN_LOCAL) != 0)
   goto drop;

 IP_VS_DBG_PKT(10, pp, skb, 0, "After SNAT");

 ip_vs_out_stats(cp, skb);
 ip_vs_set_state(cp, IP_VS_DIR_OUTPUT, skb, pp);
 ip_vs_conn_put(cp);

 skb->ipvs_property = 1;

 LeaveFunction(11);
 return NF_ACCEPT;

drop:
 ip_vs_conn_put(cp);
 kfree_skb(skb);
 return NF_STOLEN;
}

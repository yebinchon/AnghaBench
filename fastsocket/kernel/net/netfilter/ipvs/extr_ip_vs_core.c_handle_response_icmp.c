
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct sk_buff {int ipvs_property; } ;
struct ip_vs_protocol {int dummy; } ;
struct ip_vs_conn {int dummy; } ;
typedef scalar_t__ __u8 ;
typedef int __u16 ;


 int AF_INET6 ;
 scalar_t__ IPPROTO_SCTP ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int IP_VS_DBG_ADDR (int,union nf_inet_addr*) ;
 int IP_VS_DBG_BUF (int,char*,int ) ;
 scalar_t__ IP_VS_FWD_METHOD (struct ip_vs_conn*) ;
 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP ;
 int __ip_vs_conn_put (struct ip_vs_conn*) ;
 scalar_t__ ip_vs_checksum_complete (struct sk_buff*,unsigned int) ;
 int ip_vs_nat_icmp (struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_conn*,int) ;
 int ip_vs_nat_icmp_v6 (struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_conn*,int) ;
 int ip_vs_out_stats (struct ip_vs_conn*,struct sk_buff*) ;
 int pr_err (char*) ;
 int skb_csum_unnecessary (struct sk_buff*) ;
 int skb_make_writable (struct sk_buff*,unsigned int) ;

__attribute__((used)) static int handle_response_icmp(int af, struct sk_buff *skb,
    union nf_inet_addr *snet,
    __u8 protocol, struct ip_vs_conn *cp,
    struct ip_vs_protocol *pp,
    unsigned int offset, unsigned int ihl)
{
 unsigned int verdict = NF_DROP;

 if (IP_VS_FWD_METHOD(cp) != 0) {
  pr_err("shouldn't reach here, because the box is on the "
         "half connection in the tun/dr module.\n");
 }


 if (!skb_csum_unnecessary(skb) && ip_vs_checksum_complete(skb, ihl)) {

  IP_VS_DBG_BUF(1, "Forward ICMP: failed checksum from %s!\n",
         IP_VS_DBG_ADDR(af, snet));
  goto out;
 }

 if (IPPROTO_TCP == protocol || IPPROTO_UDP == protocol ||
     IPPROTO_SCTP == protocol)
  offset += 2 * sizeof(__u16);
 if (!skb_make_writable(skb, offset))
  goto out;






  ip_vs_nat_icmp(skb, pp, cp, 1);


 ip_vs_out_stats(cp, skb);

 skb->ipvs_property = 1;
 verdict = NF_ACCEPT;

out:
 __ip_vs_conn_put(cp);

 return verdict;
}

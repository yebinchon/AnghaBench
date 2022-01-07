
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int NF_ACCEPT ;
 int nf_ct_icmp_timeout ;
 int nf_ct_refresh_acct (struct nf_conn*,int,struct sk_buff const*,int ) ;

__attribute__((used)) static int icmp_packet(struct nf_conn *ct,
         const struct sk_buff *skb,
         unsigned int dataoff,
         enum ip_conntrack_info ctinfo,
         u_int8_t pf,
         unsigned int hooknum)
{



 nf_ct_refresh_acct(ct, ctinfo, skb, nf_ct_icmp_timeout);

 return NF_ACCEPT;
}

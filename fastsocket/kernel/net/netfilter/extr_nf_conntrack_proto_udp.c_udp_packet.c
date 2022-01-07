
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sk_buff {int dummy; } ;
struct nf_conn {int status; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int IPCT_STATUS ;
 int IPS_ASSURED_BIT ;
 int IPS_SEEN_REPLY_BIT ;
 int NF_ACCEPT ;
 int nf_conntrack_event_cache (int ,struct nf_conn*) ;
 int nf_ct_refresh_acct (struct nf_conn*,int,struct sk_buff const*,int ) ;
 int nf_ct_udp_timeout ;
 int nf_ct_udp_timeout_stream ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int udp_packet(struct nf_conn *ct,
        const struct sk_buff *skb,
        unsigned int dataoff,
        enum ip_conntrack_info ctinfo,
        u_int8_t pf,
        unsigned int hooknum)
{


 if (test_bit(IPS_SEEN_REPLY_BIT, &ct->status)) {
  nf_ct_refresh_acct(ct, ctinfo, skb, nf_ct_udp_timeout_stream);

  if (!test_and_set_bit(IPS_ASSURED_BIT, &ct->status))
   nf_conntrack_event_cache(IPCT_STATUS, ct);
 } else
  nf_ct_refresh_acct(ct, ctinfo, skb, nf_ct_udp_timeout);

 return NF_ACCEPT;
}

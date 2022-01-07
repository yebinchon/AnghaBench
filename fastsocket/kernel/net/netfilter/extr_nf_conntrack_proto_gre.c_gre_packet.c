
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int timeout; int stream_timeout; } ;
struct TYPE_4__ {TYPE_1__ gre; } ;
struct nf_conn {int status; TYPE_2__ proto; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int IPCT_STATUS ;
 int IPS_ASSURED_BIT ;
 int IPS_SEEN_REPLY ;
 int NF_ACCEPT ;
 int nf_conntrack_event_cache (int ,struct nf_conn*) ;
 int nf_ct_refresh_acct (struct nf_conn*,int,struct sk_buff const*,int ) ;
 int set_bit (int ,int*) ;

__attribute__((used)) static int gre_packet(struct nf_conn *ct,
        const struct sk_buff *skb,
        unsigned int dataoff,
        enum ip_conntrack_info ctinfo,
        u_int8_t pf,
        unsigned int hooknum)
{


 if (ct->status & IPS_SEEN_REPLY) {
  nf_ct_refresh_acct(ct, ctinfo, skb,
       ct->proto.gre.stream_timeout);

  set_bit(IPS_ASSURED_BIT, &ct->status);
  nf_conntrack_event_cache(IPCT_STATUS, ct);
 } else
  nf_ct_refresh_acct(ct, ctinfo, skb,
       ct->proto.gre.timeout);

 return NF_ACCEPT;
}

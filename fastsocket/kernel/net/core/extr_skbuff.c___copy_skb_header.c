
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int vlan_tci; int tc_verd; int tc_index; int nf_trace; int iif; int mark; int protocol; int ipvs_property; int deliver_no_wcard; int priority; int ip_summed; int pkt_type; int local_df; int csum; int cb; int sp; int encapsulation; int rxhash; int peek_sk; int sock_dst; int mac_header; int network_header; int transport_header; int dev; int tstamp; } ;


 int __nf_copy (struct sk_buff*,struct sk_buff const*) ;
 int dst_clone (int ) ;
 int memcpy (int ,int ,int) ;
 int secpath_get (int ) ;
 int skb_copy_queue_mapping (struct sk_buff*,struct sk_buff const*) ;
 int skb_copy_secmark (struct sk_buff*,struct sk_buff const*) ;
 int skb_dst (struct sk_buff const*) ;
 int skb_dst_set (struct sk_buff*,int ) ;

__attribute__((used)) static void __copy_skb_header(struct sk_buff *new, const struct sk_buff *old)
{
 new->tstamp = old->tstamp;
 new->dev = old->dev;
 new->transport_header = old->transport_header;
 new->network_header = old->network_header;
 new->mac_header = old->mac_header;
 skb_dst_set(new, dst_clone(skb_dst(old)));
 new->sock_dst = old->sock_dst;
 new->peek_sk = old->peek_sk;
 new->rxhash = old->rxhash;
 new->encapsulation = old->encapsulation;



 memcpy(new->cb, old->cb, sizeof(old->cb));
 new->csum = old->csum;
 new->local_df = old->local_df;
 new->pkt_type = old->pkt_type;
 new->ip_summed = old->ip_summed;
 skb_copy_queue_mapping(new, old);
 new->priority = old->priority;
 new->deliver_no_wcard = old->deliver_no_wcard;



 new->protocol = old->protocol;
 new->mark = old->mark;
 new->iif = old->iif;
 __nf_copy(new, old);
 new->vlan_tci = old->vlan_tci;

 skb_copy_secmark(new, old);
}

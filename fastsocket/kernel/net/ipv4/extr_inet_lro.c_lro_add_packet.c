
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {int dummy; } ;
struct sk_buff {struct sk_buff* next; scalar_t__ truesize; scalar_t__ len; } ;
struct net_lro_desc {struct sk_buff* last_skb; struct sk_buff* parent; } ;
struct iphdr {int dummy; } ;
struct TYPE_2__ {struct sk_buff* frag_list; } ;


 int TCP_PAYLOAD_LENGTH (struct iphdr*,struct tcphdr*) ;
 int lro_add_common (struct net_lro_desc*,struct iphdr*,struct tcphdr*,int) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void lro_add_packet(struct net_lro_desc *lro_desc, struct sk_buff *skb,
      struct iphdr *iph, struct tcphdr *tcph)
{
 struct sk_buff *parent = lro_desc->parent;
 int tcp_data_len = TCP_PAYLOAD_LENGTH(iph, tcph);

 lro_add_common(lro_desc, iph, tcph, tcp_data_len);

 skb_pull(skb, (skb->len - tcp_data_len));
 parent->truesize += skb->truesize;

 if (lro_desc->last_skb)
  lro_desc->last_skb->next = skb;
 else
  skb_shinfo(parent)->frag_list = skb;

 lro_desc->last_skb = skb;
}

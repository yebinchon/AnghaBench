
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int nf_trace; int tc_index; int mark; int dev; int protocol; int priority; int pkt_type; } ;


 int dst_clone (int ) ;
 int nf_copy (struct sk_buff*,struct sk_buff*) ;
 int skb_copy_secmark (struct sk_buff*,struct sk_buff*) ;
 int skb_dst (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,int ) ;

__attribute__((used)) static void ip6_copy_metadata(struct sk_buff *to, struct sk_buff *from)
{
 to->pkt_type = from->pkt_type;
 to->priority = from->priority;
 to->protocol = from->protocol;
 skb_dst_drop(to);
 skb_dst_set(to, dst_clone(skb_dst(from)));
 to->dev = from->dev;
 to->mark = from->mark;




 nf_copy(to, from);




 skb_copy_secmark(to, from);
}

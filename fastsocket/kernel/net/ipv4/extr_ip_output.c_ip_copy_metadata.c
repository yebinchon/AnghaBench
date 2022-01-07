
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int ipvs_property; int nf_trace; int tc_index; int mark; int dev; int protocol; int priority; int pkt_type; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* IPCB (struct sk_buff*) ;
 int dst_clone (int ) ;
 int nf_copy (struct sk_buff*,struct sk_buff*) ;
 int skb_copy_secmark (struct sk_buff*,struct sk_buff*) ;
 int skb_dst (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,int ) ;

__attribute__((used)) static void ip_copy_metadata(struct sk_buff *to, struct sk_buff *from)
{
 to->pkt_type = from->pkt_type;
 to->priority = from->priority;
 to->protocol = from->protocol;
 skb_dst_drop(to);
 skb_dst_set(to, dst_clone(skb_dst(from)));
 to->dev = from->dev;
 to->mark = from->mark;


 IPCB(to)->flags = IPCB(from)->flags;




 nf_copy(to, from);







 skb_copy_secmark(to, from);
}

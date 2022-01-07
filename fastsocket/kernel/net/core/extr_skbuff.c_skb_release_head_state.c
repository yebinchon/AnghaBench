
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ tc_verd; scalar_t__ tc_index; int nf_bridge; int nfct_reasm; int nfct; int (* destructor ) (struct sk_buff*) ;int sp; } ;


 int WARN_ON (int ) ;
 int in_irq () ;
 int nf_bridge_put (int ) ;
 int nf_conntrack_put (int ) ;
 int nf_conntrack_put_reasm (int ) ;
 int secpath_put (int ) ;
 int skb_dst_drop (struct sk_buff*) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static void skb_release_head_state(struct sk_buff *skb)
{
 skb_dst_drop(skb);



 if (skb->destructor) {
  WARN_ON(in_irq());
  skb->destructor(skb);
 }
}

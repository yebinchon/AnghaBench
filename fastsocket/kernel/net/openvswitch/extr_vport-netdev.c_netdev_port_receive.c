
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int dummy; } ;
struct sk_buff {int data; } ;


 int ETH_HLEN ;
 int GFP_ATOMIC ;
 int kfree_skb (struct sk_buff*) ;
 int ovs_skb_postpush_rcsum (struct sk_buff*,int ,int ) ;
 int ovs_vport_receive (struct vport*,struct sk_buff*,int *) ;
 int skb_push (struct sk_buff*,int ) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;
 int skb_warn_if_lro (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void netdev_port_receive(struct vport *vport, struct sk_buff *skb)
{
 if (unlikely(!vport))
  goto error;

 if (unlikely(skb_warn_if_lro(skb)))
  goto error;




 skb = skb_share_check(skb, GFP_ATOMIC);
 if (unlikely(!skb))
  return;

 skb_push(skb, ETH_HLEN);
 ovs_skb_postpush_rcsum(skb, skb->data, ETH_HLEN);

 ovs_vport_receive(vport, skb, ((void*)0));
 return;

error:
 kfree_skb(skb);
}

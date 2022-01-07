
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct can_frame {int dummy; } ;
struct bcm_op {size_t currframe; size_t nframes; int frames_abs; int sk; int ifindex; struct can_frame* frames; } ;


 int CFSIZ ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int can_send (struct sk_buff*,int) ;
 struct net_device* dev_get_by_index (int *,int ) ;
 int dev_put (struct net_device*) ;
 int gfp_any () ;
 int init_net ;
 int memcpy (int ,struct can_frame*,int ) ;
 int skb_put (struct sk_buff*,int ) ;

__attribute__((used)) static void bcm_can_tx(struct bcm_op *op)
{
 struct sk_buff *skb;
 struct net_device *dev;
 struct can_frame *cf = &op->frames[op->currframe];


 if (!op->ifindex)
  return;

 dev = dev_get_by_index(&init_net, op->ifindex);
 if (!dev) {

  return;
 }

 skb = alloc_skb(CFSIZ, gfp_any());
 if (!skb)
  goto out;

 memcpy(skb_put(skb, CFSIZ), cf, CFSIZ);


 skb->dev = dev;
 skb->sk = op->sk;
 can_send(skb, 1);


 op->currframe++;
 op->frames_abs++;


 if (op->currframe >= op->nframes)
  op->currframe = 0;
 out:
 dev_put(dev);
}

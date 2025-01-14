
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {struct sock* sk; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct msghdr {int msg_iov; } ;


 int CFSIZ ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MHSIZ ;
 struct sk_buff* alloc_skb (int,int ) ;
 int can_send (struct sk_buff*,int) ;
 struct net_device* dev_get_by_index (int *,int) ;
 int dev_put (struct net_device*) ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy_fromiovec (int ,int ,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int bcm_tx_send(struct msghdr *msg, int ifindex, struct sock *sk)
{
 struct sk_buff *skb;
 struct net_device *dev;
 int err;


 if (!ifindex)
  return -ENODEV;

 skb = alloc_skb(CFSIZ, GFP_KERNEL);

 if (!skb)
  return -ENOMEM;

 err = memcpy_fromiovec(skb_put(skb, CFSIZ), msg->msg_iov, CFSIZ);
 if (err < 0) {
  kfree_skb(skb);
  return err;
 }

 dev = dev_get_by_index(&init_net, ifindex);
 if (!dev) {
  kfree_skb(skb);
  return -ENODEV;
 }

 skb->dev = dev;
 skb->sk = sk;
 err = can_send(skb, 1);
 dev_put(dev);

 if (err)
  return err;

 return CFSIZ + MHSIZ;
}

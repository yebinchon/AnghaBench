
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_bound_dev_if; } ;
struct sk_buff {int protocol; struct sock* sk; struct net_device* dev; } ;
struct net_device {unsigned int mtu; size_t name; } ;
struct msghdr {int msg_flags; int msg_iov; } ;
struct kiocb {int dummy; } ;


 int ARPHRD_IEEE802154 ;
 int EINVAL ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int ETH_P_IEEE802154 ;
 scalar_t__ LL_ALLOCATED_SPACE (struct net_device*) ;
 int LL_RESERVED_SPACE (struct net_device*) ;
 int MSG_DONTWAIT ;
 int MSG_OOB ;
 struct net_device* dev_get_by_index (int ,int ) ;
 struct net_device* dev_getfirstbyhwtype (int ,int ) ;
 int dev_put (struct net_device*) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int lock_sock (struct sock*) ;
 int memcpy_fromiovec (int ,int ,size_t) ;
 int net_xmit_errno (int) ;
 int pr_debug (char*,...) ;
 int release_sock (struct sock*) ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,scalar_t__,int,int*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static int raw_sendmsg(struct kiocb *iocb, struct sock *sk, struct msghdr *msg,
         size_t size)
{
 struct net_device *dev;
 unsigned mtu;
 struct sk_buff *skb;
 int err;

 if (msg->msg_flags & MSG_OOB) {
  pr_debug("msg->msg_flags = 0x%x\n", msg->msg_flags);
  return -EOPNOTSUPP;
 }

 lock_sock(sk);
 if (!sk->sk_bound_dev_if)
  dev = dev_getfirstbyhwtype(sock_net(sk), ARPHRD_IEEE802154);
 else
  dev = dev_get_by_index(sock_net(sk), sk->sk_bound_dev_if);
 release_sock(sk);

 if (!dev) {
  pr_debug("no dev\n");
  err = -ENXIO;
  goto out;
 }

 mtu = dev->mtu;
 pr_debug("name = %s, mtu = %u\n", dev->name, mtu);

 if (size > mtu) {
  pr_debug("size = %Zu, mtu = %u\n", size, mtu);
  err = -EINVAL;
  goto out_dev;
 }

 skb = sock_alloc_send_skb(sk, LL_ALLOCATED_SPACE(dev) + size,
   msg->msg_flags & MSG_DONTWAIT, &err);
 if (!skb)
  goto out_dev;

 skb_reserve(skb, LL_RESERVED_SPACE(dev));

 skb_reset_mac_header(skb);
 skb_reset_network_header(skb);

 err = memcpy_fromiovec(skb_put(skb, size), msg->msg_iov, size);
 if (err < 0)
  goto out_skb;

 skb->dev = dev;
 skb->sk = sk;
 skb->protocol = htons(ETH_P_IEEE802154);

 dev_put(dev);

 err = dev_queue_xmit(skb);
 if (err > 0)
  err = net_xmit_errno(err);

 return err ?: size;

out_skb:
 kfree_skb(skb);
out_dev:
 dev_put(dev);
out:
 return err;
}

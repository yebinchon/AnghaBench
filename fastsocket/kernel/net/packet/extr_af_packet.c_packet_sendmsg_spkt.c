
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_pkt {scalar_t__* spkt_device; int spkt_protocol; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_priority; } ;
struct sk_buff {size_t data; size_t tail; int priority; struct net_device* dev; int protocol; } ;
struct net_device {int flags; size_t mtu; size_t hard_header_len; scalar_t__ header_ops; } ;
struct msghdr {int msg_namelen; int msg_iov; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
typedef int __be16 ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENETDOWN ;
 int ENOBUFS ;
 int ENODEV ;
 int ENOTCONN ;
 int GFP_KERNEL ;
 int IFF_UP ;
 scalar_t__ LL_RESERVED_SPACE (struct net_device*) ;
 struct net_device* dev_get_by_name (int ,scalar_t__*) ;
 int dev_put (struct net_device*) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy_fromiovec (int ,int ,size_t) ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_tx (struct sk_buff*) ;
 int sock_net (struct sock*) ;
 int sock_tx_timestamp (struct msghdr*,struct sock*,int ) ;
 struct sk_buff* sock_wmalloc (struct sock*,scalar_t__,int ,int ) ;

__attribute__((used)) static int packet_sendmsg_spkt(struct kiocb *iocb, struct socket *sock,
          struct msghdr *msg, size_t len)
{
 struct sock *sk = sock->sk;
 struct sockaddr_pkt *saddr = (struct sockaddr_pkt *)msg->msg_name;
 struct sk_buff *skb;
 struct net_device *dev;
 __be16 proto = 0;
 int err;





 if (saddr) {
  if (msg->msg_namelen < sizeof(struct sockaddr))
   return -EINVAL;
  if (msg->msg_namelen == sizeof(struct sockaddr_pkt))
   proto = saddr->spkt_protocol;
 } else
  return -ENOTCONN;





 saddr->spkt_device[13] = 0;
 dev = dev_get_by_name(sock_net(sk), saddr->spkt_device);
 err = -ENODEV;
 if (dev == ((void*)0))
  goto out_unlock;

 err = -ENETDOWN;
 if (!(dev->flags & IFF_UP))
  goto out_unlock;






 err = -EMSGSIZE;
 if (len > dev->mtu + dev->hard_header_len)
  goto out_unlock;

 err = -ENOBUFS;
 skb = sock_wmalloc(sk, len + LL_RESERVED_SPACE(dev), 0, GFP_KERNEL);







 if (skb == ((void*)0))
  goto out_unlock;
 skb_reserve(skb, LL_RESERVED_SPACE(dev));
 skb_reset_network_header(skb);


 if (dev->header_ops) {
  skb->data -= dev->hard_header_len;
  skb->tail -= dev->hard_header_len;
  if (len < dev->hard_header_len)
   skb_reset_network_header(skb);
 }


 err = memcpy_fromiovec(skb_put(skb, len), msg->msg_iov, len);
 skb->protocol = proto;
 skb->dev = dev;
 skb->priority = sk->sk_priority;
 if (err)
  goto out_free;
 err = sock_tx_timestamp(msg, sk, skb_tx(skb));
 if (err < 0)
  goto out_free;





 dev_queue_xmit(skb);
 dev_put(dev);
 return len;

out_free:
 kfree_skb(skb);
out_unlock:
 if (dev)
  dev_put(dev);
 return err;
}

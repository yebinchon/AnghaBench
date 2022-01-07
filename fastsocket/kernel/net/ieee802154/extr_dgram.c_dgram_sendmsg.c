
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int protocol; struct sock* sk; struct net_device* dev; } ;
struct net_device {unsigned int mtu; size_t name; } ;
struct msghdr {int msg_flags; int msg_iov; } ;
struct kiocb {int dummy; } ;
struct dgram_sock {int src_addr; scalar_t__ bound; int dst_addr; scalar_t__ want_ack; } ;
struct TYPE_4__ {int (* get_dsn ) (struct net_device*) ;} ;
struct TYPE_3__ {int seq; int flags; } ;


 int ARPHRD_IEEE802154 ;
 int EINVAL ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int ETH_P_IEEE802154 ;
 int IEEE802154_FC_TYPE_DATA ;
 scalar_t__ LL_ALLOCATED_SPACE (struct net_device*) ;
 int LL_RESERVED_SPACE (struct net_device*) ;
 int MAC_CB_FLAG_ACKREQ ;
 int MSG_DONTWAIT ;
 int MSG_OOB ;
 struct net_device* dev_getfirstbyhwtype (int ,int ) ;
 int dev_hard_header (struct sk_buff*,struct net_device*,int ,int *,int *,size_t) ;
 int dev_put (struct net_device*) ;
 int dev_queue_xmit (struct sk_buff*) ;
 struct dgram_sock* dgram_sk (struct sock*) ;
 int htons (int ) ;
 struct net_device* ieee802154_get_dev (int ,int *) ;
 TYPE_2__* ieee802154_mlme_ops (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 TYPE_1__* mac_cb (struct sk_buff*) ;
 int memcpy_fromiovec (int ,int ,size_t) ;
 int net_xmit_errno (int) ;
 int pr_debug (char*,...) ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,scalar_t__,int,int*) ;
 int sock_net (struct sock*) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static int dgram_sendmsg(struct kiocb *iocb, struct sock *sk,
  struct msghdr *msg, size_t size)
{
 struct net_device *dev;
 unsigned mtu;
 struct sk_buff *skb;
 struct dgram_sock *ro = dgram_sk(sk);
 int err;

 if (msg->msg_flags & MSG_OOB) {
  pr_debug("msg->msg_flags = 0x%x\n", msg->msg_flags);
  return -EOPNOTSUPP;
 }

 if (!ro->bound)
  dev = dev_getfirstbyhwtype(sock_net(sk), ARPHRD_IEEE802154);
 else
  dev = ieee802154_get_dev(sock_net(sk), &ro->src_addr);

 if (!dev) {
  pr_debug("no dev\n");
  err = -ENXIO;
  goto out;
 }
 mtu = dev->mtu;
 pr_debug("name = %s, mtu = %u\n", dev->name, mtu);

 skb = sock_alloc_send_skb(sk, LL_ALLOCATED_SPACE(dev) + size,
   msg->msg_flags & MSG_DONTWAIT,
   &err);
 if (!skb)
  goto out_dev;

 skb_reserve(skb, LL_RESERVED_SPACE(dev));

 skb_reset_network_header(skb);

 mac_cb(skb)->flags = IEEE802154_FC_TYPE_DATA;
 if (ro->want_ack)
  mac_cb(skb)->flags |= MAC_CB_FLAG_ACKREQ;

 mac_cb(skb)->seq = ieee802154_mlme_ops(dev)->get_dsn(dev);
 err = dev_hard_header(skb, dev, ETH_P_IEEE802154, &ro->dst_addr,
   ro->bound ? &ro->src_addr : ((void*)0), size);
 if (err < 0)
  goto out_skb;

 skb_reset_mac_header(skb);

 err = memcpy_fromiovec(skb_put(skb, size), msg->msg_iov, size);
 if (err < 0)
  goto out_skb;

 if (size > mtu) {
  pr_debug("size = %Zu, mtu = %u\n", size, mtu);
  err = -EINVAL;
  goto out_skb;
 }

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

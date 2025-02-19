
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct atalk_addr {scalar_t__ s_node; scalar_t__ s_net; } ;
struct sockaddr_at {scalar_t__ sat_family; struct atalk_addr sat_addr; int sat_port; } ;
struct sock {scalar_t__ sk_state; int sk_no_check; } ;
struct sk_buff {struct net_device* dev; struct sock* sk; } ;
struct net_device {int hard_header_len; int flags; int dev_addr; int name; } ;
struct msghdr {int msg_flags; int msg_namelen; int msg_iov; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
struct ddpehdr {scalar_t__ deh_dnode; scalar_t__ deh_sum; int deh_sport; int deh_dport; int deh_snode; scalar_t__ deh_snet; scalar_t__ deh_dnet; int deh_len_hops; } ;
struct atalk_sock {scalar_t__ dest_node; int src_port; int src_node; scalar_t__ src_net; scalar_t__ dest_net; int dest_port; } ;
struct atalk_route {int flags; struct atalk_addr gateway; struct net_device* dev; } ;
struct TYPE_3__ {int header_length; int (* request ) (TYPE_1__*,struct sk_buff*,int ) ;} ;


 scalar_t__ AF_APPLETALK ;
 scalar_t__ ATADDR_ANYNODE ;
 scalar_t__ ATADDR_BCAST ;
 size_t DDP_MAXSZ ;
 int EBUSY ;
 int EFAULT ;
 int EINVAL ;
 int EMSGSIZE ;
 int ENETUNREACH ;
 int ENOTCONN ;
 int EPERM ;
 int GFP_KERNEL ;
 int IFF_LOOPBACK ;
 int MSG_CMSG_COMPAT ;
 int MSG_DONTWAIT ;
 int RTF_GATEWAY ;
 int SOCK_BROADCAST ;
 int SOCK_DEBUG (struct sock*,char*,struct sock*,...) ;
 int SOCK_ZAPPED ;
 scalar_t__ TCP_ESTABLISHED ;
 int aarp_send_ddp (struct net_device*,struct sk_buff*,struct atalk_addr*,int *) ;
 struct atalk_sock* at_sk (struct sock*) ;
 scalar_t__ atalk_autobind (struct sock*) ;
 scalar_t__ atalk_checksum (struct sk_buff*,size_t) ;
 struct atalk_route* atrtr_find (struct atalk_addr*) ;
 TYPE_1__* ddp_dl ;
 int htons (size_t) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy_fromiovec (scalar_t__,int ,size_t) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;
 int skb_orphan (struct sk_buff*) ;
 scalar_t__ skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,int) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,int,int,int*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int stub1 (TYPE_1__*,struct sk_buff*,int ) ;

__attribute__((used)) static int atalk_sendmsg(struct kiocb *iocb, struct socket *sock, struct msghdr *msg,
    size_t len)
{
 struct sock *sk = sock->sk;
 struct atalk_sock *at = at_sk(sk);
 struct sockaddr_at *usat = (struct sockaddr_at *)msg->msg_name;
 int flags = msg->msg_flags;
 int loopback = 0;
 struct sockaddr_at local_satalk, gsat;
 struct sk_buff *skb;
 struct net_device *dev;
 struct ddpehdr *ddp;
 int size;
 struct atalk_route *rt;
 int err;

 if (flags & ~(MSG_DONTWAIT|MSG_CMSG_COMPAT))
  return -EINVAL;

 if (len > DDP_MAXSZ)
  return -EMSGSIZE;

 if (usat) {
  if (sock_flag(sk, SOCK_ZAPPED))
   if (atalk_autobind(sk) < 0)
    return -EBUSY;

  if (msg->msg_namelen < sizeof(*usat) ||
      usat->sat_family != AF_APPLETALK)
   return -EINVAL;


  if (usat->sat_addr.s_node == ATADDR_BCAST &&
      !sock_flag(sk, SOCK_BROADCAST)) {
   return -EPERM;
  }
 } else {
  if (sk->sk_state != TCP_ESTABLISHED)
   return -ENOTCONN;
  usat = &local_satalk;
  usat->sat_family = AF_APPLETALK;
  usat->sat_port = at->dest_port;
  usat->sat_addr.s_node = at->dest_node;
  usat->sat_addr.s_net = at->dest_net;
 }


 SOCK_DEBUG(sk, "SK %p: Got address.\n", sk);


 size = sizeof(struct ddpehdr) + len + ddp_dl->header_length;

 if (usat->sat_addr.s_net || usat->sat_addr.s_node == ATADDR_ANYNODE) {
  rt = atrtr_find(&usat->sat_addr);
 } else {
  struct atalk_addr at_hint;

  at_hint.s_node = 0;
  at_hint.s_net = at->src_net;

  rt = atrtr_find(&at_hint);
 }
 if (!rt)
  return -ENETUNREACH;

 dev = rt->dev;

 SOCK_DEBUG(sk, "SK %p: Size needed %d, device %s\n",
   sk, size, dev->name);

 size += dev->hard_header_len;
 skb = sock_alloc_send_skb(sk, size, (flags & MSG_DONTWAIT), &err);
 if (!skb)
  return err;

 skb->sk = sk;
 skb_reserve(skb, ddp_dl->header_length);
 skb_reserve(skb, dev->hard_header_len);
 skb->dev = dev;

 SOCK_DEBUG(sk, "SK %p: Begin build.\n", sk);

 ddp = (struct ddpehdr *)skb_put(skb, sizeof(struct ddpehdr));
 ddp->deh_len_hops = htons(len + sizeof(*ddp));
 ddp->deh_dnet = usat->sat_addr.s_net;
 ddp->deh_snet = at->src_net;
 ddp->deh_dnode = usat->sat_addr.s_node;
 ddp->deh_snode = at->src_node;
 ddp->deh_dport = usat->sat_port;
 ddp->deh_sport = at->src_port;

 SOCK_DEBUG(sk, "SK %p: Copy user data (%Zd bytes).\n", sk, len);

 err = memcpy_fromiovec(skb_put(skb, len), msg->msg_iov, len);
 if (err) {
  kfree_skb(skb);
  return -EFAULT;
 }

 if (sk->sk_no_check == 1)
  ddp->deh_sum = 0;
 else
  ddp->deh_sum = atalk_checksum(skb, len + sizeof(*ddp));





 if (ddp->deh_dnode == ATADDR_BCAST &&
     !(rt->flags & RTF_GATEWAY) && !(dev->flags & IFF_LOOPBACK)) {
  struct sk_buff *skb2 = skb_copy(skb, GFP_KERNEL);

  if (skb2) {
   loopback = 1;
   SOCK_DEBUG(sk, "SK %p: send out(copy).\n", sk);



   aarp_send_ddp(dev, skb2, &usat->sat_addr, ((void*)0));
  }
 }

 if (dev->flags & IFF_LOOPBACK || loopback) {
  SOCK_DEBUG(sk, "SK %p: Loop back.\n", sk);

  skb_orphan(skb);
  if (ddp->deh_dnode == ATADDR_BCAST) {
   struct atalk_addr at_lo;

   at_lo.s_node = 0;
   at_lo.s_net = 0;

   rt = atrtr_find(&at_lo);
   if (!rt) {
    kfree_skb(skb);
    return -ENETUNREACH;
   }
   dev = rt->dev;
   skb->dev = dev;
  }
  ddp_dl->request(ddp_dl, skb, dev->dev_addr);
 } else {
  SOCK_DEBUG(sk, "SK %p: send out.\n", sk);
  if (rt->flags & RTF_GATEWAY) {
      gsat.sat_addr = rt->gateway;
      usat = &gsat;
  }




  aarp_send_ddp(dev, skb, &usat->sat_addr, ((void*)0));
 }
 SOCK_DEBUG(sk, "SK %p: Done write (%Zd).\n", sk, len);

 return len;
}

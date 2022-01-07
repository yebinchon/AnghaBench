
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_in6 {scalar_t__ sin6_scope_id; int sin6_addr; scalar_t__ sin6_flowinfo; scalar_t__ sin6_port; int sin6_family; } ;
struct sock {int sk_drops; } ;
struct sk_buff {size_t len; } ;
struct msghdr {int msg_flags; int msg_iov; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
struct TYPE_4__ {scalar_t__ all; } ;
struct ipv6_pinfo {TYPE_1__ rxopt; } ;
struct TYPE_6__ {scalar_t__ iif; } ;
struct TYPE_5__ {int saddr; } ;


 int AF_INET6 ;
 int EAGAIN ;
 int EHOSTUNREACH ;
 int EINVAL ;
 int EOPNOTSUPP ;
 TYPE_3__* IP6CB (struct sk_buff*) ;
 int IPV6_ADDR_LINKLOCAL ;
 int MSG_DONTWAIT ;
 int MSG_ERRQUEUE ;
 int MSG_OOB ;
 int MSG_TRUNC ;
 scalar_t__ __skb_checksum_complete (struct sk_buff*) ;
 int atomic_inc (int *) ;
 int datagram_recv_ctl (struct sock*,struct msghdr*,struct sk_buff*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int ipv6_addr_copy (int *,int *) ;
 int ipv6_addr_type (int *) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 int ipv6_recv_error (struct sock*,struct msghdr*,size_t,int*) ;
 int skb_copy_and_csum_datagram_iovec (struct sk_buff*,int ,int ) ;
 int skb_copy_datagram_iovec (struct sk_buff*,int ,int ,size_t) ;
 scalar_t__ skb_csum_unnecessary (struct sk_buff*) ;
 int skb_free_datagram (struct sock*,struct sk_buff*) ;
 int skb_kill_datagram (struct sock*,struct sk_buff*,int) ;
 struct sk_buff* skb_recv_datagram (struct sock*,int,int,int*) ;
 int sock_recv_ts_and_drops (struct msghdr*,struct sock*,struct sk_buff*) ;

__attribute__((used)) static int rawv6_recvmsg(struct kiocb *iocb, struct sock *sk,
    struct msghdr *msg, size_t len,
    int noblock, int flags, int *addr_len)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)msg->msg_name;
 struct sk_buff *skb;
 size_t copied;
 int err;

 if (flags & MSG_OOB)
  return -EOPNOTSUPP;

 if (flags & MSG_ERRQUEUE)
  return ipv6_recv_error(sk, msg, len, addr_len);

 skb = skb_recv_datagram(sk, flags, noblock, &err);
 if (!skb)
  goto out;

 copied = skb->len;
 if (copied > len) {
  copied = len;
  msg->msg_flags |= MSG_TRUNC;
 }

 if (skb_csum_unnecessary(skb)) {
  err = skb_copy_datagram_iovec(skb, 0, msg->msg_iov, copied);
 } else if (msg->msg_flags&MSG_TRUNC) {
  if (__skb_checksum_complete(skb))
   goto csum_copy_err;
  err = skb_copy_datagram_iovec(skb, 0, msg->msg_iov, copied);
 } else {
  err = skb_copy_and_csum_datagram_iovec(skb, 0, msg->msg_iov);
  if (err == -EINVAL)
   goto csum_copy_err;
 }
 if (err)
  goto out_free;


 if (sin6) {
  sin6->sin6_family = AF_INET6;
  sin6->sin6_port = 0;
  ipv6_addr_copy(&sin6->sin6_addr, &ipv6_hdr(skb)->saddr);
  sin6->sin6_flowinfo = 0;
  sin6->sin6_scope_id = 0;
  if (ipv6_addr_type(&sin6->sin6_addr) & IPV6_ADDR_LINKLOCAL)
   sin6->sin6_scope_id = IP6CB(skb)->iif;
  *addr_len = sizeof(*sin6);
 }

 sock_recv_ts_and_drops(msg, sk, skb);

 if (np->rxopt.all)
  datagram_recv_ctl(sk, msg, skb);

 err = copied;
 if (flags & MSG_TRUNC)
  err = skb->len;

out_free:
 skb_free_datagram(sk, skb);
out:
 return err;

csum_copy_err:
 skb_kill_datagram(sk, skb, flags);




 err = (flags&MSG_DONTWAIT) ? -EAGAIN : -EHOSTUNREACH;
 atomic_inc(&sk->sk_drops);
 goto out;
}

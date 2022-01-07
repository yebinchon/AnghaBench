
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct udphdr {int dummy; } ;
struct TYPE_5__ {int s_addr; } ;
struct sockaddr_in {int sin_zero; TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct msghdr {int msg_flags; int msg_iov; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
struct inet_sock {scalar_t__ cmsg_flags; } ;
struct TYPE_8__ {scalar_t__ partial_cov; } ;
struct TYPE_7__ {int saddr; } ;
struct TYPE_6__ {int source; } ;


 int AF_INET ;
 int EAGAIN ;
 int EINVAL ;
 int IS_UDPLITE (struct sock*) ;
 int MSG_DONTWAIT ;
 int MSG_ERRQUEUE ;
 int MSG_TRUNC ;
 int UDP_INC_STATS_USER (int ,int ,int) ;
 int UDP_MIB_INDATAGRAMS ;
 int UDP_MIB_INERRORS ;
 TYPE_4__* UDP_SKB_CB (struct sk_buff*) ;
 struct sk_buff* __skb_recv_datagram (struct sock*,int,int*,int*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ip_cmsg_recv (struct msghdr*,struct sk_buff*) ;
 TYPE_3__* ip_hdr (struct sk_buff*) ;
 int ip_recv_error (struct sock*,struct msghdr*,size_t,int*) ;
 int lock_sock (struct sock*) ;
 int memset (int ,int ,int) ;
 int release_sock (struct sock*) ;
 int skb_copy_and_csum_datagram_iovec (struct sk_buff*,int,int ) ;
 int skb_copy_datagram_iovec (struct sk_buff*,int,int ,unsigned int) ;
 scalar_t__ skb_csum_unnecessary (struct sk_buff*) ;
 int skb_free_datagram_locked (struct sock*,struct sk_buff*) ;
 int skb_kill_datagram (struct sock*,struct sk_buff*,int) ;
 int sock_net (struct sock*) ;
 int sock_recv_ts_and_drops (struct msghdr*,struct sock*,struct sk_buff*) ;
 TYPE_2__* udp_hdr (struct sk_buff*) ;
 scalar_t__ udp_lib_checksum_complete (struct sk_buff*) ;

int udp_recvmsg(struct kiocb *iocb, struct sock *sk, struct msghdr *msg,
  size_t len, int noblock, int flags, int *addr_len)
{
 struct inet_sock *inet = inet_sk(sk);
 struct sockaddr_in *sin = (struct sockaddr_in *)msg->msg_name;
 struct sk_buff *skb;
 unsigned int ulen, copied;
 int peeked;
 int err;
 int is_udplite = IS_UDPLITE(sk);

 if (flags & MSG_ERRQUEUE)
  return ip_recv_error(sk, msg, len, addr_len);

try_again:
 skb = __skb_recv_datagram(sk, flags | (noblock ? MSG_DONTWAIT : 0),
      &peeked, &err);
 if (!skb)
  goto out;

 ulen = skb->len - sizeof(struct udphdr);
 copied = len;
 if (copied > ulen)
  copied = ulen;
 else if (copied < ulen)
  msg->msg_flags |= MSG_TRUNC;







 if (copied < ulen || UDP_SKB_CB(skb)->partial_cov) {
  if (udp_lib_checksum_complete(skb))
   goto csum_copy_err;
 }

 if (skb_csum_unnecessary(skb))
  err = skb_copy_datagram_iovec(skb, sizeof(struct udphdr),
           msg->msg_iov, copied);
 else {
  err = skb_copy_and_csum_datagram_iovec(skb,
             sizeof(struct udphdr),
             msg->msg_iov);

  if (err == -EINVAL)
   goto csum_copy_err;
 }

 if (err)
  goto out_free;

 if (!peeked)
  UDP_INC_STATS_USER(sock_net(sk),
    UDP_MIB_INDATAGRAMS, is_udplite);

 sock_recv_ts_and_drops(msg, sk, skb);


 if (sin) {
  sin->sin_family = AF_INET;
  sin->sin_port = udp_hdr(skb)->source;
  sin->sin_addr.s_addr = ip_hdr(skb)->saddr;
  memset(sin->sin_zero, 0, sizeof(sin->sin_zero));
  *addr_len = sizeof(*sin);
 }
 if (inet->cmsg_flags)
  ip_cmsg_recv(msg, skb);

 err = copied;
 if (flags & MSG_TRUNC)
  err = ulen;

out_free:
 skb_free_datagram_locked(sk, skb);
out:
 return err;

csum_copy_err:
 lock_sock(sk);
 if (!skb_kill_datagram(sk, skb, flags))
  UDP_INC_STATS_USER(sock_net(sk), UDP_MIB_INERRORS, is_udplite);
 release_sock(sk);

 if (noblock)
  return -EAGAIN;
 goto try_again;
}

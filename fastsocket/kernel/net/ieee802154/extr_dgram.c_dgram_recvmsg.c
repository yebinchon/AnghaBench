
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {size_t len; } ;
struct msghdr {int msg_flags; int msg_iov; } ;
struct kiocb {int dummy; } ;


 int EOPNOTSUPP ;
 int MSG_TRUNC ;
 int skb_copy_datagram_iovec (struct sk_buff*,int ,int ,size_t) ;
 int skb_free_datagram (struct sock*,struct sk_buff*) ;
 struct sk_buff* skb_recv_datagram (struct sock*,int,int,int*) ;
 int sock_recv_ts_and_drops (struct msghdr*,struct sock*,struct sk_buff*) ;

__attribute__((used)) static int dgram_recvmsg(struct kiocb *iocb, struct sock *sk,
  struct msghdr *msg, size_t len, int noblock, int flags,
  int *addr_len)
{
 size_t copied = 0;
 int err = -EOPNOTSUPP;
 struct sk_buff *skb;

 skb = skb_recv_datagram(sk, flags, noblock, &err);
 if (!skb)
  goto out;

 copied = skb->len;
 if (len < copied) {
  msg->msg_flags |= MSG_TRUNC;
  copied = len;
 }


 err = skb_copy_datagram_iovec(skb, 0, msg->msg_iov, copied);
 if (err)
  goto done;

 sock_recv_ts_and_drops(msg, sk, skb);

 if (flags & MSG_TRUNC)
  copied = skb->len;
done:
 skb_free_datagram(sk, skb);
out:
 if (err)
  return err;
 return copied;
}

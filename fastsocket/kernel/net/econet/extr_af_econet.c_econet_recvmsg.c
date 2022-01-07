
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_ec {int dummy; } ;
struct sock {int sk_stamp; } ;
struct sk_buff {size_t len; int cb; int tstamp; int data; } ;
struct msghdr {int msg_namelen; scalar_t__ msg_name; int msg_iov; int msg_flags; } ;
struct kiocb {int dummy; } ;
struct TYPE_2__ {int msg_namelen; } ;


 int MSG_DONTWAIT ;
 int MSG_TRUNC ;
 int econet_mutex ;
 TYPE_1__* m ;
 int memcpy (scalar_t__,int ,int ) ;
 int memcpy_toiovec (int ,int ,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skb_free_datagram (struct sock*,struct sk_buff*) ;
 struct sk_buff* skb_recv_datagram (struct sock*,int,int,int*) ;

__attribute__((used)) static int econet_recvmsg(struct kiocb *iocb, struct socket *sock,
     struct msghdr *msg, size_t len, int flags)
{
 struct sock *sk = sock->sk;
 struct sk_buff *skb;
 size_t copied;
 int err;

 msg->msg_namelen = 0;

 mutex_lock(&econet_mutex);
 skb=skb_recv_datagram(sk,flags,flags&MSG_DONTWAIT,&err);







 if(skb==((void*)0))
  goto out;






 copied = skb->len;
 if (copied > len)
 {
  copied=len;
  msg->msg_flags|=MSG_TRUNC;
 }


 err = memcpy_toiovec(msg->msg_iov, skb->data, copied);
 if (err)
  goto out_free;
 sk->sk_stamp = skb->tstamp;

 if (msg->msg_name) {
  m->msg_namelen = sizeof(struct sockaddr_ec);
  memcpy(msg->msg_name, skb->cb, msg->msg_namelen);
 }




 err = copied;

out_free:
 skb_free_datagram(sk, skb);
out:
 mutex_unlock(&econet_mutex);
 return err;
}

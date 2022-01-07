
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_pn {scalar_t__ spn_family; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int msg_flags; int msg_namelen; int msg_iov; int * msg_name; } ;
struct kiocb {int dummy; } ;


 scalar_t__ AF_PHONET ;
 int EAFNOSUPPORT ;
 int EDESTADDRREQ ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ MAX_PHONET_HEADER ;
 int MSG_DONTWAIT ;
 int MSG_OOB ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy_fromiovec (void*,int ,size_t) ;
 int pn_skb_send (struct sock*,struct sk_buff*,struct sockaddr_pn*) ;
 scalar_t__ skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,scalar_t__,int,int*) ;

__attribute__((used)) static int pn_sendmsg(struct kiocb *iocb, struct sock *sk,
   struct msghdr *msg, size_t len)
{
 struct sockaddr_pn *target;
 struct sk_buff *skb;
 int err;

 if (msg->msg_flags & MSG_OOB)
  return -EOPNOTSUPP;

 if (msg->msg_name == ((void*)0))
  return -EDESTADDRREQ;

 if (msg->msg_namelen < sizeof(struct sockaddr_pn))
  return -EINVAL;

 target = (struct sockaddr_pn *)msg->msg_name;
 if (target->spn_family != AF_PHONET)
  return -EAFNOSUPPORT;

 skb = sock_alloc_send_skb(sk, MAX_PHONET_HEADER + len,
     msg->msg_flags & MSG_DONTWAIT, &err);
 if (skb == ((void*)0))
  return err;
 skb_reserve(skb, MAX_PHONET_HEADER);

 err = memcpy_fromiovec((void *)skb_put(skb, len), msg->msg_iov, len);
 if (err < 0) {
  kfree_skb(skb);
  return err;
 }





 err = pn_skb_send(sk, skb, target);


 return (err >= 0) ? len : err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;


 scalar_t__ IS_ERR (struct sock*) ;
 int PTR_ERR (struct sock*) ;
 int gfp_any () ;
 int kfree_skb (struct sk_buff*) ;
 int netlink_attachskb (struct sock*,struct sk_buff*,long*,struct sock*) ;
 struct sock* netlink_getsockbypid (struct sock*,int ) ;
 scalar_t__ netlink_is_kernel (struct sock*) ;
 int netlink_sendskb (struct sock*,struct sk_buff*) ;
 struct sk_buff* netlink_trim (struct sk_buff*,int ) ;
 int netlink_unicast_kernel (struct sock*,struct sk_buff*) ;
 scalar_t__ sk_filter (struct sock*,struct sk_buff*) ;
 int sock_put (struct sock*) ;
 long sock_sndtimeo (struct sock*,int) ;

int netlink_unicast(struct sock *ssk, struct sk_buff *skb,
      u32 pid, int nonblock)
{
 struct sock *sk;
 int err;
 long timeo;

 skb = netlink_trim(skb, gfp_any());

 timeo = sock_sndtimeo(ssk, nonblock);
retry:
 sk = netlink_getsockbypid(ssk, pid);
 if (IS_ERR(sk)) {
  kfree_skb(skb);
  return PTR_ERR(sk);
 }
 if (netlink_is_kernel(sk))
  return netlink_unicast_kernel(sk, skb);

 if (sk_filter(sk, skb)) {
  err = skb->len;
  kfree_skb(skb);
  sock_put(sk);
  return err;
 }

 err = netlink_attachskb(sk, skb, &timeo, ssk);
 if (err == 1)
  goto retry;
 if (err)
  return err;

 return netlink_sendskb(sk, skb);
}

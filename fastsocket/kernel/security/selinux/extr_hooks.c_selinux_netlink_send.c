
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int cap_netlink_send (struct sock*,struct sk_buff*) ;
 int selinux_nlmsg_perm (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int selinux_netlink_send(struct sock *sk, struct sk_buff *skb)
{
 int err;

 err = cap_netlink_send(sk, skb);
 if (err)
  return err;

 return selinux_nlmsg_perm(sk, skb);
}

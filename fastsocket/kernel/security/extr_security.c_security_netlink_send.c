
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* netlink_send ) (struct sock*,struct sk_buff*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct sock*,struct sk_buff*) ;

int security_netlink_send(struct sock *sk, struct sk_buff *skb)
{
 return security_ops->netlink_send(sk, skb);
}

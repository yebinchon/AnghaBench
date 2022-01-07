
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* netlink_recv ) (struct sk_buff*,int) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct sk_buff*,int) ;

int security_netlink_recv(struct sk_buff *skb, int cap)
{
 return security_ops->netlink_recv(skb, cap);
}

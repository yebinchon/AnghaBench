
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int eff_cap; } ;


 int EPERM ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int cap_raised (int ,int) ;

int cap_netlink_recv(struct sk_buff *skb, int cap)
{
 if (!cap_raised(NETLINK_CB(skb).eff_cap, cap))
  return -EPERM;
 return 0;
}

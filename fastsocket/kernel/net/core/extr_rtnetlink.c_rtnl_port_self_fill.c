
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct TYPE_2__ {int (* ndo_get_vf_port ) (struct net_device*,int ,struct sk_buff*) ;} ;


 int EMSGSIZE ;
 int IFLA_PORT_SELF ;
 int PORT_SELF_VF ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 int stub1 (struct net_device*,int ,struct sk_buff*) ;

__attribute__((used)) static int rtnl_port_self_fill(struct sk_buff *skb, struct net_device *dev)
{
 struct nlattr *port_self;
 int err;

 port_self = nla_nest_start(skb, IFLA_PORT_SELF);
 if (!port_self)
  return -EMSGSIZE;

 err = dev->netdev_ops->ndo_get_vf_port(dev, PORT_SELF_VF, skb);
 if (err) {
  nla_nest_cancel(skb, port_self);
  return (err == -EMSGSIZE) ? err : 0;
 }

 nla_nest_end(skb, port_self);

 return 0;
}

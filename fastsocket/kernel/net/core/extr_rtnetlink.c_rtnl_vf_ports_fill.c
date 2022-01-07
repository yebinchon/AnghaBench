
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct net_device {TYPE_1__* netdev_ops; TYPE_2__ dev; } ;
struct TYPE_3__ {int (* ndo_get_vf_port ) (struct net_device*,int,struct sk_buff*) ;} ;


 int EMSGSIZE ;
 int IFLA_PORT_VF ;
 int IFLA_VF_PORT ;
 int IFLA_VF_PORTS ;
 int NLA_PUT_U32 (struct sk_buff*,int ,int) ;
 int dev_num_vf (int ) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 int stub1 (struct net_device*,int,struct sk_buff*) ;

__attribute__((used)) static int rtnl_vf_ports_fill(struct sk_buff *skb, struct net_device *dev)
{
 struct nlattr *vf_ports;
 struct nlattr *vf_port;
 int vf;
 int err;

 vf_ports = nla_nest_start(skb, IFLA_VF_PORTS);
 if (!vf_ports)
  return -EMSGSIZE;

 for (vf = 0; vf < dev_num_vf(dev->dev.parent); vf++) {
  vf_port = nla_nest_start(skb, IFLA_VF_PORT);
  if (!vf_port)
   goto nla_put_failure;
  NLA_PUT_U32(skb, IFLA_PORT_VF, vf);
  err = dev->netdev_ops->ndo_get_vf_port(dev, vf, skb);
  if (err == -EMSGSIZE)
   goto nla_put_failure;
  if (err) {
   nla_nest_cancel(skb, vf_port);
   continue;
  }
  nla_nest_end(skb, vf_port);
 }

 nla_nest_end(skb, vf_ports);

 return 0;

nla_put_failure:
 nla_nest_cancel(skb, vf_ports);
 return -EMSGSIZE;
}

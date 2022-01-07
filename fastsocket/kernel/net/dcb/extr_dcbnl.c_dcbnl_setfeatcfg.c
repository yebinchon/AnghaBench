
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct TYPE_2__ {int (* setfeatcfg ) (struct net_device*,int,int ) ;} ;


 size_t DCB_ATTR_FEATCFG ;
 int DCB_CMD_SFEATCFG ;
 int DCB_FEATCFG_ATTR_ALL ;
 int DCB_FEATCFG_ATTR_MAX ;
 int EINVAL ;
 int ENOTSUPP ;
 int RTM_SETDCB ;
 int dcbnl_featcfg_nest ;
 int dcbnl_reply (int,int ,int ,size_t,int ,int ,int ) ;
 int nla_get_u8 (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int,struct nlattr*,int ) ;
 int stub1 (struct net_device*,int,int ) ;

__attribute__((used)) static int dcbnl_setfeatcfg(struct net_device *netdev, struct nlattr **tb,
       u32 pid, u32 seq, u16 flags)
{
 struct nlattr *data[DCB_FEATCFG_ATTR_MAX + 1];
 int ret, i;
 u8 value;

 if (!netdev->dcbnl_ops->setfeatcfg)
  return -ENOTSUPP;

 if (!tb[DCB_ATTR_FEATCFG])
  return -EINVAL;

 ret = nla_parse_nested(data, DCB_FEATCFG_ATTR_MAX, tb[DCB_ATTR_FEATCFG],
          dcbnl_featcfg_nest);

 if (ret)
  goto err;

 for (i = DCB_FEATCFG_ATTR_ALL+1; i <= DCB_FEATCFG_ATTR_MAX; i++) {
  if (data[i] == ((void*)0))
   continue;

  value = nla_get_u8(data[i]);

  ret = netdev->dcbnl_ops->setfeatcfg(netdev, i, value);

  if (ret)
   goto err;
 }
err:
 dcbnl_reply(ret, RTM_SETDCB, DCB_CMD_SFEATCFG, DCB_ATTR_FEATCFG,
      pid, seq, flags);

 return ret;
}

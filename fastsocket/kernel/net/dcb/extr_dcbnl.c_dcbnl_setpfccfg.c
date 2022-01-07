
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nlattr {scalar_t__ nla_type; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct TYPE_2__ {int (* setpfccfg ) (struct net_device*,scalar_t__,int ) ;} ;


 size_t DCB_ATTR_PFC_CFG ;
 int DCB_CMD_PFC_SCFG ;
 int DCB_PFC_UP_ATTR_0 ;
 int DCB_PFC_UP_ATTR_7 ;
 int DCB_PFC_UP_ATTR_MAX ;
 int EINVAL ;
 int RTM_SETDCB ;
 int dcbnl_pfc_up_nest ;
 int dcbnl_reply (int ,int ,int ,size_t,int ,int ,int ) ;
 int nla_get_u8 (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;
 int stub1 (struct net_device*,scalar_t__,int ) ;

__attribute__((used)) static int dcbnl_setpfccfg(struct net_device *netdev, struct nlattr **tb,
                           u32 pid, u32 seq, u16 flags)
{
 struct nlattr *data[DCB_PFC_UP_ATTR_MAX + 1];
 int i;
 int ret = -EINVAL;
 u8 value;

 if (!tb[DCB_ATTR_PFC_CFG] || !netdev->dcbnl_ops->setpfccfg)
  return ret;

 ret = nla_parse_nested(data, DCB_PFC_UP_ATTR_MAX,
                        tb[DCB_ATTR_PFC_CFG],
                        dcbnl_pfc_up_nest);
 if (ret)
  goto err;

 for (i = DCB_PFC_UP_ATTR_0; i <= DCB_PFC_UP_ATTR_7; i++) {
  if (data[i] == ((void*)0))
   continue;
  value = nla_get_u8(data[i]);
  netdev->dcbnl_ops->setpfccfg(netdev,
   data[i]->nla_type - DCB_PFC_UP_ATTR_0, value);
 }

 ret = dcbnl_reply(0, RTM_SETDCB, DCB_CMD_PFC_SCFG, DCB_ATTR_PFC_CFG,
                   pid, seq, flags);
err:
 return ret;
}


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
struct TYPE_2__ {int (* setdcbx ) (struct net_device*,int ) ;} ;


 size_t DCB_ATTR_DCBX ;
 int DCB_CMD_SDCBX ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int RTM_SETDCB ;
 int dcbnl_reply (int ,int ,int ,size_t,int ,int ,int ) ;
 int nla_get_u8 (struct nlattr*) ;
 int stub1 (struct net_device*,int ) ;

__attribute__((used)) static int dcbnl_setdcbx(struct net_device *netdev, struct nlattr **tb,
    u32 pid, u32 seq, u16 flags)
{
 int ret;
 u8 value;

 if (!netdev->dcbnl_ops->setdcbx)
  return -EOPNOTSUPP;

 if (!tb[DCB_ATTR_DCBX])
  return -EINVAL;

 value = nla_get_u8(tb[DCB_ATTR_DCBX]);

 ret = dcbnl_reply(netdev->dcbnl_ops->setdcbx(netdev, value),
     RTM_SETDCB, DCB_CMD_SDCBX, DCB_ATTR_DCBX,
     pid, seq, flags);

 return ret;
}

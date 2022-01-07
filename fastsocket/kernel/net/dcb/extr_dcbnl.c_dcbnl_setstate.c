
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
struct TYPE_2__ {int (* setstate ) (struct net_device*,int ) ;} ;


 size_t DCB_ATTR_STATE ;
 int DCB_CMD_SSTATE ;
 int EINVAL ;
 int RTM_SETDCB ;
 int dcbnl_reply (int ,int ,int ,size_t,int ,int ,int ) ;
 int nla_get_u8 (struct nlattr*) ;
 int stub1 (struct net_device*,int ) ;

__attribute__((used)) static int dcbnl_setstate(struct net_device *netdev, struct nlattr **tb,
                          u32 pid, u32 seq, u16 flags)
{
 int ret = -EINVAL;
 u8 value;

 if (!tb[DCB_ATTR_STATE] || !netdev->dcbnl_ops->setstate)
  return ret;

 value = nla_get_u8(tb[DCB_ATTR_STATE]);

 ret = dcbnl_reply(netdev->dcbnl_ops->setstate(netdev, value),
                   RTM_SETDCB, DCB_CMD_SSTATE, DCB_ATTR_STATE,
                   pid, seq, flags);

 return ret;
}

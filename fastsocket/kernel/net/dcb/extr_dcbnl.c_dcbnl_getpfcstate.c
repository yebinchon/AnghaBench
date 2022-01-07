
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct TYPE_2__ {int (* getpfcstate ) (struct net_device*) ;} ;


 int DCB_ATTR_PFC_STATE ;
 int DCB_CMD_PFC_GSTATE ;
 int EINVAL ;
 int RTM_GETDCB ;
 int dcbnl_reply (int ,int ,int ,int ,int ,int ,int ) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static int dcbnl_getpfcstate(struct net_device *netdev, struct nlattr **tb,
                             u32 pid, u32 seq, u16 flags)
{
 int ret = -EINVAL;

 if (!netdev->dcbnl_ops->getpfcstate)
  return ret;

 ret = dcbnl_reply(netdev->dcbnl_ops->getpfcstate(netdev), RTM_GETDCB,
                   DCB_CMD_PFC_GSTATE, DCB_ATTR_PFC_STATE,
                   pid, seq, flags);

 return ret;
}

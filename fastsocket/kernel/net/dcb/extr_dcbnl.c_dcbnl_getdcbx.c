
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct TYPE_2__ {int (* getdcbx ) (struct net_device*) ;} ;


 int DCB_ATTR_DCBX ;
 int DCB_CMD_GDCBX ;
 int EOPNOTSUPP ;
 int RTM_GETDCB ;
 int dcbnl_reply (int ,int ,int ,int ,int ,int ,int ) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static int dcbnl_getdcbx(struct net_device *netdev, struct nlattr **tb,
    u32 pid, u32 seq, u16 flags)
{
 int ret;

 if (!netdev->dcbnl_ops->getdcbx)
  return -EOPNOTSUPP;

 ret = dcbnl_reply(netdev->dcbnl_ops->getdcbx(netdev), RTM_GETDCB,
     DCB_CMD_GDCBX, DCB_ATTR_DCBX, pid, seq, flags);

 return ret;
}

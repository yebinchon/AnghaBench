
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct TYPE_2__ {int (* setall ) (struct net_device*) ;} ;


 size_t DCB_ATTR_SET_ALL ;
 int DCB_CMD_SET_ALL ;
 int EINVAL ;
 int RTM_SETDCB ;
 int dcbnl_reply (int ,int ,int ,size_t,int ,int ,int ) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static int dcbnl_setall(struct net_device *netdev, struct nlattr **tb,
                        u32 pid, u32 seq, u16 flags)
{
 int ret = -EINVAL;

 if (!tb[DCB_ATTR_SET_ALL] || !netdev->dcbnl_ops->setall)
  return ret;

 ret = dcbnl_reply(netdev->dcbnl_ops->setall(netdev), RTM_SETDCB,
                   DCB_CMD_SET_ALL, DCB_ATTR_SET_ALL, pid, seq, flags);

 return ret;
}

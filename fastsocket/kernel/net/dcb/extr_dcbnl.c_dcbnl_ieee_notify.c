
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int DCB_CAP_DCBX_VER_IEEE ;
 int dcbnl_notify (struct net_device*,int,int,int ,int ,int ) ;

int dcbnl_ieee_notify(struct net_device *dev, int event, int cmd,
        u32 seq, u32 pid)
{
 return dcbnl_notify(dev, event, cmd, seq, pid, DCB_CAP_DCBX_VER_IEEE);
}

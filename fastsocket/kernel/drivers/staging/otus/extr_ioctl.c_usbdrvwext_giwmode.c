
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdrv_private {int DeviceOpened; int cs_lock; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct iw_request_info {int dummy; } ;
typedef int __u32 ;


 int EINVAL ;
 int IW_MODE_ADHOC ;
 int IW_MODE_INFRA ;
 int IW_MODE_MASTER ;



 int netif_running (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int zfiWlanQueryWlanMode (struct net_device*) ;

int usbdrvwext_giwmode(struct net_device *dev,
 struct iw_request_info *info,
 __u32 *mode, char *extra)
{
 unsigned long irqFlag;
 struct usbdrv_private *macp = dev->ml_priv;

 if (!netif_running(dev))
  return -EINVAL;

 if (macp->DeviceOpened != 1)
  return 0;

 spin_lock_irqsave(&macp->cs_lock, irqFlag);

 switch (zfiWlanQueryWlanMode(dev)) {
 case 130:
  *mode = IW_MODE_MASTER;
  break;
 case 128:
  *mode = IW_MODE_INFRA;
  break;
 case 129:
  *mode = IW_MODE_ADHOC;
  break;
 default:
  *mode = IW_MODE_ADHOC;
  break;
 }

 spin_unlock_irqrestore(&macp->cs_lock, irqFlag);

 return 0;
}

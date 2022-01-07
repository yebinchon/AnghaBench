
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdrv_private {int DeviceOpened; int cs_lock; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int disabled; } ;


 scalar_t__ ZM_STA_PS_NONE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ zfiWlanQueryPowerSaveMode (struct net_device*) ;

int usbdrvwext_giwpower(struct net_device *dev,
  struct iw_request_info *info,
  struct iw_param *frq, char *extra)
{
 unsigned long irqFlag;
 struct usbdrv_private *macp = dev->ml_priv;

 if (macp->DeviceOpened != 1)
  return 0;

 spin_lock_irqsave(&macp->cs_lock, irqFlag);

 if (zfiWlanQueryPowerSaveMode(dev) == ZM_STA_PS_NONE)
  frq->disabled = 1;
 else
  frq->disabled = 0;

 spin_unlock_irqrestore(&macp->cs_lock, irqFlag);

 return 0;
}

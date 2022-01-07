
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbdrv_private {int DeviceOpened; int cs_lock; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; int disabled; int fixed; } ;


 int EINVAL ;
 int netif_running (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int zfiWlanQueryFragThreshold (struct net_device*) ;

int usbdrvwext_giwfrag(struct net_device *dev,
  struct iw_request_info *info,
  struct iw_param *frag, char *extra)
{
 struct usbdrv_private *macp = dev->ml_priv;
 u16 val;
 unsigned long irqFlag;

 if (!netif_running(dev))
  return -EINVAL;

 if (macp->DeviceOpened != 1)
  return 0;

 spin_lock_irqsave(&macp->cs_lock, irqFlag);

 val = zfiWlanQueryFragThreshold(dev);

 frag->value = val;

 frag->disabled = (val >= 2346);
 frag->fixed = 1;

 spin_unlock_irqrestore(&macp->cs_lock, irqFlag);

 return 0;
}

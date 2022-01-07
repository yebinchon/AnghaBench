
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct usbdrv_private {int DeviceOpened; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {scalar_t__ disabled; } ;


 int ZM_STA_PS_MAX ;
 int ZM_STA_PS_NONE ;
 int zfiWlanSetPowerSaveMode (struct net_device*,int ) ;

int usbdrvwext_siwpower(struct net_device *dev,
  struct iw_request_info *info,
  struct iw_param *frq, char *extra)
{
 struct usbdrv_private *macp = dev->ml_priv;
 u8_t PSMode;

 if (macp->DeviceOpened != 1)
  return 0;

 if (frq->disabled)
  PSMode = ZM_STA_PS_NONE;
 else
  PSMode = ZM_STA_PS_MAX;

 zfiWlanSetPowerSaveMode(dev, PSMode);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union iwreq_data {int mode; } ;
typedef int u8_t ;
struct usbdrv_private {int DeviceOpened; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct iw_request_info {int dummy; } ;


 int EINVAL ;



 int ZM_MODE_AP ;
 int ZM_MODE_IBSS ;
 int ZM_MODE_INFRASTRUCTURE ;
 int netif_running (struct net_device*) ;
 int zfiWlanDisable (struct net_device*,int) ;
 int zfiWlanEnable (struct net_device*) ;
 int zfiWlanSetWlanMode (struct net_device*,int ) ;

int usbdrvwext_siwmode(struct net_device *dev,
  struct iw_request_info *info,
  union iwreq_data *wrq, char *extra)
{
 struct usbdrv_private *macp = dev->ml_priv;
 u8_t WlanMode;

 if (!netif_running(dev))
  return -EINVAL;

 if (macp->DeviceOpened != 1)
  return 0;

 switch (wrq->mode) {
 case 128:
  WlanMode = ZM_MODE_AP;
  break;
 case 129:
  WlanMode = ZM_MODE_INFRASTRUCTURE;
  break;
 case 130:
  WlanMode = ZM_MODE_IBSS;
  break;
 default:
  WlanMode = ZM_MODE_IBSS;
  break;
 }

 zfiWlanSetWlanMode(dev, WlanMode);
 zfiWlanDisable(dev, 1);
 zfiWlanEnable(dev);

 return 0;
}

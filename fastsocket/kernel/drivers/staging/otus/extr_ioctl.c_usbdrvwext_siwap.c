
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct usbdrv_private {int DeviceOpened; } ;
struct sockaddr {int * sa_data; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct iw_request_info {int dummy; } ;


 int EINVAL ;
 scalar_t__ ZM_MODE_AP ;
 int netif_running (struct net_device*) ;
 int zfiWlanDisable (struct net_device*,int ) ;
 int zfiWlanEnable (struct net_device*) ;
 scalar_t__ zfiWlanQueryWlanMode (struct net_device*) ;
 int zfiWlanSetBssid (struct net_device*,int *) ;
 int zfiWlanSetMacAddress (struct net_device*,int *) ;

int usbdrvwext_siwap(struct net_device *dev, struct iw_request_info *info,
  struct sockaddr *MacAddr, char *extra)
{
 struct usbdrv_private *macp = dev->ml_priv;

 if (!netif_running(dev))
  return -EINVAL;

 if (zfiWlanQueryWlanMode(dev) == ZM_MODE_AP) {

  zfiWlanSetMacAddress(dev, (u16_t *)&MacAddr->sa_data[0]);
 } else {

  zfiWlanSetBssid(dev, &MacAddr->sa_data[0]);
 }

 if (macp->DeviceOpened == 1) {


  zfiWlanDisable(dev, 0);
  zfiWlanEnable(dev);


 }

 return 0;
}

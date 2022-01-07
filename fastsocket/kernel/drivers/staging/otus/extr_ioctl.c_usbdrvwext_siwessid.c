
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdrv_private {int DeviceOpened; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int length; int pointer; } ;


 int E2BIG ;
 int EFAULT ;
 int EINVAL ;
 int FALSE ;
 int IW_ESSID_MAX_SIZE ;
 scalar_t__ copy_from_user (char**,int ,int) ;
 int netif_running (struct net_device*) ;
 int strlen (char*) ;
 int zfiWlanDisable (struct net_device*,int ) ;
 int zfiWlanEnable (struct net_device*) ;
 int zfiWlanQueryEncryMode (struct net_device*) ;
 int zfiWlanQueryFrequency (struct net_device*) ;
 int zfiWlanSetEncryMode (struct net_device*,int ) ;
 int zfiWlanSetFrequency (struct net_device*,int ,int ) ;
 int zfiWlanSetSSID (struct net_device*,char*,int ) ;

int usbdrvwext_siwessid(struct net_device *dev,
  struct iw_request_info *info,
  struct iw_point *essid, char *extra)
{
 char EssidBuf[IW_ESSID_MAX_SIZE + 1];
 struct usbdrv_private *macp = dev->ml_priv;

 if (!netif_running(dev))
  return -EINVAL;

 if (essid->flags == 1) {
  if (essid->length > (IW_ESSID_MAX_SIZE + 1))
   return -E2BIG;

  if (copy_from_user(&EssidBuf, essid->pointer, essid->length))
   return -EFAULT;

  EssidBuf[essid->length] = '\0';



  if (macp->DeviceOpened == 1) {
   zfiWlanSetSSID(dev, EssidBuf, strlen(EssidBuf));
   zfiWlanSetFrequency(dev, zfiWlanQueryFrequency(dev),
      FALSE);
   zfiWlanSetEncryMode(dev, zfiWlanQueryEncryMode(dev));


   zfiWlanDisable(dev, 0);
   zfiWlanEnable(dev);


  }
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
struct usbdrv_private {int DeviceOpened; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int length; } ;


 int EINVAL ;
 int IW_ESSID_MAX_SIZE ;
 int memcpy (char*,char*,int ) ;
 int netif_running (struct net_device*) ;
 int strlen (char*) ;
 int zfiWlanQuerySSID (struct net_device*,char*,scalar_t__*) ;

int usbdrvwext_giwessid(struct net_device *dev,
  struct iw_request_info *info,
  struct iw_point *essid, char *extra)
{
 struct usbdrv_private *macp = dev->ml_priv;
 u8_t EssidLen;
 char EssidBuf[IW_ESSID_MAX_SIZE + 1];
 int ssid_len;

 if (!netif_running(dev))
  return -EINVAL;

 if (macp->DeviceOpened != 1)
  return 0;

 zfiWlanQuerySSID(dev, &EssidBuf[0], &EssidLen);


 ssid_len = (int)EssidLen;


 if (ssid_len > IW_ESSID_MAX_SIZE)
  ssid_len = IW_ESSID_MAX_SIZE;

 EssidBuf[ssid_len] = '\0';

 essid->flags = 1;
 essid->length = strlen(EssidBuf);

 memcpy(extra, EssidBuf, essid->length);
 return 0;
}

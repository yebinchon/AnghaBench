
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zsKeyInfo {char* key; int keyIndex; int flag; int keyLength; } ;
struct usbdrv_private {int DeviceOpened; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int length; } ;


 int EINVAL ;
 int FALSE ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_INDEX ;
 int ZM_ENCRYPTION_WEP_DISABLED ;
 int ZM_ENCRYPTION_WEP_ENABLED ;
 int ZM_KEY_FLAG_DEFAULT_KEY ;
 int netif_running (struct net_device*) ;
 int zfiWlanDisable (struct net_device*,int ) ;
 int zfiWlanEnable (struct net_device*) ;
 int zfiWlanQueryFrequency (struct net_device*) ;
 int zfiWlanRemoveKey (struct net_device*,int ,int) ;
 int zfiWlanSetFrequency (struct net_device*,int ,int ) ;
 int zfiWlanSetKey (struct net_device*,struct zsKeyInfo) ;
 int zfiWlanSetWepStatus (struct net_device*,int) ;

int usbdrvwext_siwencode(struct net_device *dev,
  struct iw_request_info *info,
  struct iw_point *erq, char *key)
{
 struct zsKeyInfo keyInfo;
 int i;
 int WepState = ZM_ENCRYPTION_WEP_DISABLED;
 struct usbdrv_private *macp = dev->ml_priv;

 if (!netif_running(dev))
  return -EINVAL;

 if ((erq->flags & IW_ENCODE_DISABLED) == 0) {
  keyInfo.key = key;
  keyInfo.keyLength = erq->length;
  keyInfo.keyIndex = (erq->flags & IW_ENCODE_INDEX) - 1;
  if (keyInfo.keyIndex >= 4)
   keyInfo.keyIndex = 0;
  keyInfo.flag = ZM_KEY_FLAG_DEFAULT_KEY;

  zfiWlanSetKey(dev, keyInfo);
  WepState = ZM_ENCRYPTION_WEP_ENABLED;
 } else {
  for (i = 1; i < 4; i++)
   zfiWlanRemoveKey(dev, 0, i);
  WepState = ZM_ENCRYPTION_WEP_DISABLED;

 }

 if (macp->DeviceOpened == 1) {
  zfiWlanSetWepStatus(dev, WepState);
  zfiWlanSetFrequency(dev, zfiWlanQueryFrequency(dev), FALSE);



  zfiWlanDisable(dev, 0);
  zfiWlanEnable(dev);


 }

 return 0;
}

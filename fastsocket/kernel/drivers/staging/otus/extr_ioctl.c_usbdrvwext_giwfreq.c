
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdrv_private {int DeviceOpened; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int e; int m; } ;


 int zfiWlanQueryFrequency (struct net_device*) ;

int usbdrvwext_giwfreq(struct net_device *dev,
  struct iw_request_info *info,
  struct iw_freq *freq, char *extra)
{
 struct usbdrv_private *macp = dev->ml_priv;

 if (macp->DeviceOpened != 1)
  return 0;

 freq->m = zfiWlanQueryFrequency(dev);
 freq->e = 3;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;
struct usbdrv_private {int DeviceOpened; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int e; int m; } ;


 int EINVAL ;
 int netif_running (struct net_device*) ;
 int usbdrv_chan2freq (int) ;
 int zfiWlanDisable (struct net_device*,int ) ;
 int zfiWlanEnable (struct net_device*) ;
 int zfiWlanSetFrequency (struct net_device*,int,int ) ;

int usbdrvwext_siwfreq(struct net_device *dev,
  struct iw_request_info *info,
  struct iw_freq *freq, char *extra)
{
 u32_t FreqKHz;
 struct usbdrv_private *macp = dev->ml_priv;

 if (!netif_running(dev))
  return -EINVAL;

 if (freq->e > 1)
  return -EINVAL;

 if (freq->e == 1) {
  FreqKHz = (freq->m / 100000);

  if (FreqKHz > 4000000) {
   if (FreqKHz > 5825000)
    FreqKHz = 5825000;
   else if (FreqKHz < 4920000)
    FreqKHz = 4920000;
   else if (FreqKHz < 5000000)
    FreqKHz = (((FreqKHz - 4000000) / 5000) * 5000)
      + 4000000;
   else
    FreqKHz = (((FreqKHz - 5000000) / 5000) * 5000)
      + 5000000;
  } else {
   if (FreqKHz > 2484000)
    FreqKHz = 2484000;
   else if (FreqKHz < 2412000)
    FreqKHz = 2412000;
   else
    FreqKHz = (((FreqKHz - 2412000) / 5000) * 5000)
      + 2412000;
  }
 } else {
  FreqKHz = usbdrv_chan2freq(freq->m);

  if (FreqKHz != -1)
   FreqKHz *= 1000;
  else
   FreqKHz = 2412000;
 }




 if (macp->DeviceOpened == 1) {
  zfiWlanSetFrequency(dev, FreqKHz, 0);


  zfiWlanDisable(dev, 0);
  zfiWlanEnable(dev);


 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdrv_private {int hbTimer10ms; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;


 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int zfiHeartBeat (struct net_device*) ;

void zfLnx10msTimer(struct net_device* dev)
{
    struct usbdrv_private *macp = dev->ml_priv;

    mod_timer(&(macp->hbTimer10ms), jiffies + (1*HZ)/100);
    zfiHeartBeat(dev);
    return;
}

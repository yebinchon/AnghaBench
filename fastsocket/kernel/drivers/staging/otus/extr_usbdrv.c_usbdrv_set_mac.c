
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdrv_private {int isolate_lock; scalar_t__ driver_isolated; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;


 int read_lock (int *) ;
 int read_unlock (int *) ;

int usbdrv_set_mac(struct net_device *dev, void *addr)
{
    struct usbdrv_private *macp;
    int rc = -1;

    macp = dev->ml_priv;
    read_lock(&(macp->isolate_lock));

    if (macp->driver_isolated) {
        goto exit;
    }

    rc = 0;


exit:
    read_unlock(&(macp->isolate_lock));
    return rc;
}

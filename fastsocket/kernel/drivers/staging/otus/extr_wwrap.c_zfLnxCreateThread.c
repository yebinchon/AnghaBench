
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct usbdrv_private* ml_priv; } ;
typedef TYPE_1__ zdev_t ;
typedef int u8_t ;
struct usbdrv_private {int ioctl_sem; int kevent; } ;


 int INIT_WORK (int *,int ) ;
 int init_MUTEX (int *) ;
 int kevent ;

u8_t zfLnxCreateThread(zdev_t *dev)
{
    struct usbdrv_private *macp = dev->ml_priv;


    INIT_WORK(&macp->kevent, kevent);
    init_MUTEX(&macp->ioctl_sem);

    return 0;
}

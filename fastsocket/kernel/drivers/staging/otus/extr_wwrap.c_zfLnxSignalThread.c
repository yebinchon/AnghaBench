
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct usbdrv_private* ml_priv; } ;
typedef TYPE_1__ zdev_t ;
struct usbdrv_private {int kevent_ready; int kevent; int kevent_flags; } ;


 int printk (char*) ;
 int schedule_work (int *) ;
 int set_bit (int,int *) ;

void zfLnxSignalThread(zdev_t *dev, int flag)
{
    struct usbdrv_private *macp = dev->ml_priv;

    if (macp == ((void*)0))
    {
        printk("macp is NULL\n");
        return;
    }

    if (0 && macp->kevent_ready != 1)
    {
        printk("Kevent not ready\n");
        return;
    }

    set_bit(flag, &macp->kevent_flags);

    if (!schedule_work(&macp->kevent))
    {


    }
}

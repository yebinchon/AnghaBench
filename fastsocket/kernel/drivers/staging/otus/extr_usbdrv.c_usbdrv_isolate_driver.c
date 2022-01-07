
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdrv_private {int device; int isolate_lock; int driver_isolated; } ;


 int TRUE ;
 int netif_carrier_off (int ) ;
 scalar_t__ netif_running (int ) ;
 int netif_stop_queue (int ) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

void
usbdrv_isolate_driver(struct usbdrv_private *macp)
{

    write_lock_irq(&(macp->isolate_lock));

    macp->driver_isolated = TRUE;

    write_unlock_irq(&(macp->isolate_lock));


    if (netif_running(macp->device))
    {
        netif_carrier_off(macp->device);
        netif_stop_queue(macp->device);
    }
}

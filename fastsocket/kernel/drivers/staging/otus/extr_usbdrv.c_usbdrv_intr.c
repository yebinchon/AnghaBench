
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdrv_private {scalar_t__ driver_isolated; } ;
struct pt_regs {int dummy; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int netif_running (struct net_device*) ;

irqreturn_t usbdrv_intr(int irq, void *dev_inst, struct pt_regs *regs)
{
    struct net_device *dev;
    struct usbdrv_private *macp;

    dev = dev_inst;
    macp = dev->ml_priv;



    if (0)
        return IRQ_NONE;


    if (!netif_running(dev)) {
        return IRQ_NONE;
    }

    if (macp->driver_isolated) {
        return IRQ_NONE;
    }





    return IRQ_HANDLED;
}

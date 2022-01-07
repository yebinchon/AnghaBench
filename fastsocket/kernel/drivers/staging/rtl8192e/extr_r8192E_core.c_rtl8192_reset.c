
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int printk (char*) ;
 int rtl8192_irq_disable (struct net_device*) ;

__attribute__((used)) static void rtl8192_reset(struct net_device *dev)
{
    rtl8192_irq_disable(dev);
    printk("This is RTL819xP Reset procedure\n");
}

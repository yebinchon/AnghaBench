
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int rtl8192_rx_initiate (struct net_device*) ;

void rtl8192_rx_enable(struct net_device *dev)
{




 rtl8192_rx_initiate(dev);


}

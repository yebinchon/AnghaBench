
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int cvm_oct_common_uninit (struct net_device*) ;

void cvm_oct_xaui_uninit(struct net_device *dev)
{
 cvm_oct_common_uninit(dev);
}

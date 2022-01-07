
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int dm_deInit_fsync (struct net_device*) ;

extern void deinit_hal_dm(struct net_device *dev)
{

 dm_deInit_fsync(dev);

}

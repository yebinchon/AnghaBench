
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int features; } ;


 int flags_dup_features ;

u32 ethtool_op_get_flags(struct net_device *dev)
{





 return dev->features & flags_dup_features;
}

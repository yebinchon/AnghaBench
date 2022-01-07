
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 struct net_device* alloc_netdev (int,char*,int ) ;
 int ltalk_setup ;

struct net_device *alloc_ltalkdev(int sizeof_priv)
{
 return alloc_netdev(sizeof_priv, "lt%d", ltalk_setup);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 struct net_device* alloc_netdev (int,char*,int ) ;
 int fddi_setup ;

struct net_device *alloc_fddidev(int sizeof_priv)
{
 return alloc_netdev(sizeof_priv, "fddi%d", fddi_setup);
}

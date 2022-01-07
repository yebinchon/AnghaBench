
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 struct net_device* alloc_netdev (int,char*,int ) ;
 int tr_setup ;

struct net_device *alloc_trdev(int sizeof_priv)
{
 return alloc_netdev(sizeof_priv, "tr%d", tr_setup);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;


 int BT_DBG (char*,int ) ;

__attribute__((used)) static int bnep_net_set_mac_addr(struct net_device *dev, void *arg)
{
 BT_DBG("%s", dev->name);
 return 0;
}

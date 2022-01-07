
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int mac_was_set; } ;


 TYPE_1__* BRPRIV (struct net_device*) ;
 int eth_mac_addr (struct net_device*,void*) ;

__attribute__((used)) static int br2684_mac_addr(struct net_device *dev, void *p)
{
 int err = eth_mac_addr(dev, p);
 if (!err)
  BRPRIV(dev)->mac_was_set = 1;
 return err;
}

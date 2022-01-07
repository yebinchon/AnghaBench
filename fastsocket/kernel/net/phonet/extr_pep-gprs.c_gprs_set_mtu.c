
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EINVAL ;
 int PHONET_MAX_MTU ;

__attribute__((used)) static int gprs_set_mtu(struct net_device *dev, int new_mtu)
{
 if ((new_mtu < 576) || (new_mtu > (PHONET_MAX_MTU - 11)))
  return -EINVAL;

 dev->mtu = new_mtu;
 return 0;
}

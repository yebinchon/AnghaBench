
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EINVAL ;
 int FDDI_K_SNAP_DLEN ;
 int FDDI_K_SNAP_HLEN ;

int fddi_change_mtu(struct net_device *dev, int new_mtu)
{
 if ((new_mtu < FDDI_K_SNAP_HLEN) || (new_mtu > FDDI_K_SNAP_DLEN))
  return(-EINVAL);
 dev->mtu = new_mtu;
 return(0);
}

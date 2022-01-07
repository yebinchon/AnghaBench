
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct eth_dev {int lock; scalar_t__ port_usb; } ;


 int EBUSY ;
 int ERANGE ;
 int ETH_FRAME_LEN ;
 int ETH_HLEN ;
 struct eth_dev* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ueth_change_mtu(struct net_device *net, int new_mtu)
{
 struct eth_dev *dev = netdev_priv(net);
 unsigned long flags;
 int status = 0;


 spin_lock_irqsave(&dev->lock, flags);
 if (dev->port_usb)
  status = -EBUSY;
 else if (new_mtu <= ETH_HLEN || new_mtu > ETH_FRAME_LEN)
  status = -ERANGE;
 else
  net->mtu = new_mtu;
 spin_unlock_irqrestore(&dev->lock, flags);

 return status;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int hard_header_len; int addr_len; int tx_queue_len; int * header_ops; int destructor; int * netdev_ops; int * dev_addr; int mtu; int type; scalar_t__ features; } ;


 int ARPHRD_PHONET ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int PHONET_DEV_MTU ;
 int PN_MEDIA_USB ;
 int free_netdev ;
 int phonet_header_ops ;
 int pn_netdev_ops ;

__attribute__((used)) static void pn_net_setup(struct net_device *dev)
{
 dev->features = 0;
 dev->type = ARPHRD_PHONET;
 dev->flags = IFF_POINTOPOINT | IFF_NOARP;
 dev->mtu = PHONET_DEV_MTU;
 dev->hard_header_len = 1;
 dev->dev_addr[0] = PN_MEDIA_USB;
 dev->addr_len = 1;
 dev->tx_queue_len = 1;

 dev->netdev_ops = &pn_netdev_ops;
 dev->destructor = free_netdev;
 dev->header_ops = &phonet_header_ops;
}

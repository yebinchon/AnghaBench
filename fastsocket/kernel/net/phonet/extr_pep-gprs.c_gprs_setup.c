
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int tx_queue_len; int destructor; int * netdev_ops; scalar_t__ addr_len; scalar_t__ hard_header_len; int mtu; int type; int features; } ;


 int ARPHRD_PHONET_PIPE ;
 int GPRS_DEFAULT_MTU ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int NETIF_F_FRAGLIST ;
 int free_netdev ;
 int gprs_netdev_ops ;

__attribute__((used)) static void gprs_setup(struct net_device *dev)
{
 dev->features = NETIF_F_FRAGLIST;
 dev->type = ARPHRD_PHONET_PIPE;
 dev->flags = IFF_POINTOPOINT | IFF_NOARP;
 dev->mtu = GPRS_DEFAULT_MTU;
 dev->hard_header_len = 0;
 dev->addr_len = 0;
 dev->tx_queue_len = 10;

 dev->netdev_ops = &gprs_netdev_ops;
 dev->destructor = free_netdev;
}

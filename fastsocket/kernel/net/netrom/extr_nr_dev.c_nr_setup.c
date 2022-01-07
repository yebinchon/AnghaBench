
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int type; int addr_len; scalar_t__ hard_header_len; int * header_ops; int * netdev_ops; int mtu; } ;


 int ARPHRD_NETROM ;
 int AX25_ADDR_LEN ;
 int IFF_NOARP ;
 int NR_MAX_PACKET_SIZE ;
 scalar_t__ NR_NETWORK_LEN ;
 scalar_t__ NR_TRANSPORT_LEN ;
 int nr_header_ops ;
 int nr_netdev_ops ;

void nr_setup(struct net_device *dev)
{
 dev->mtu = NR_MAX_PACKET_SIZE;
 dev->netdev_ops = &nr_netdev_ops;
 dev->header_ops = &nr_header_ops;
 dev->hard_header_len = NR_NETWORK_LEN + NR_TRANSPORT_LEN;
 dev->addr_len = AX25_ADDR_LEN;
 dev->type = ARPHRD_NETROM;


 dev->flags = IFF_NOARP;
}

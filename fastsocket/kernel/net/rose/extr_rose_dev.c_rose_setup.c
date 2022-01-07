
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int type; int addr_len; scalar_t__ hard_header_len; int * header_ops; int * netdev_ops; scalar_t__ mtu; } ;


 int ARPHRD_ROSE ;
 scalar_t__ AX25_BPQ_HEADER_LEN ;
 scalar_t__ AX25_MAX_HEADER_LEN ;
 int IFF_NOARP ;
 int ROSE_ADDR_LEN ;
 scalar_t__ ROSE_MAX_PACKET_SIZE ;
 scalar_t__ ROSE_MIN_LEN ;
 int rose_header_ops ;
 int rose_netdev_ops ;

void rose_setup(struct net_device *dev)
{
 dev->mtu = ROSE_MAX_PACKET_SIZE - 2;
 dev->netdev_ops = &rose_netdev_ops;

 dev->header_ops = &rose_header_ops;
 dev->hard_header_len = AX25_BPQ_HEADER_LEN + AX25_MAX_HEADER_LEN + ROSE_MIN_LEN;
 dev->addr_len = ROSE_ADDR_LEN;
 dev->type = ARPHRD_ROSE;


 dev->flags = IFF_NOARP;
}

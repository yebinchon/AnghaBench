
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int tx_queue_len; int flags; int broadcast; int addr_len; int mtu; int hard_header_len; int type; int * header_ops; } ;
struct TYPE_2__ {int ext_priv_flags; } ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 int ETH_DATA_LEN ;
 int ETH_HLEN ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_TX_SKB_SHARING ;
 int eth_header_ops ;
 int memset (int ,int,int ) ;
 TYPE_1__* netdev_extended (struct net_device*) ;

void ether_setup(struct net_device *dev)
{
 dev->header_ops = &eth_header_ops;
 dev->type = ARPHRD_ETHER;
 dev->hard_header_len = ETH_HLEN;
 dev->mtu = ETH_DATA_LEN;
 dev->addr_len = ETH_ALEN;
 dev->tx_queue_len = 1000;
 dev->flags = IFF_BROADCAST|IFF_MULTICAST;
 netdev_extended(dev)->ext_priv_flags = IFF_TX_SKB_SHARING;

 memset(dev->broadcast, 0xFF, ETH_ALEN);

}

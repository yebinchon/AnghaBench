
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; int tx_queue_len; int flags; int broadcast; int addr_len; int hard_header_len; int type; } ;


 int ARPHRD_IEEE80211 ;
 int ETH_ALEN ;
 int ETH_HLEN ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int memset (int ,int,int ) ;

__attribute__((used)) static void wpadev_setup(struct net_device *dev)
{
 dev->type = ARPHRD_IEEE80211;
 dev->hard_header_len = ETH_HLEN;
 dev->mtu = 2048;
 dev->addr_len = ETH_ALEN;
 dev->tx_queue_len = 1000;

 memset(dev->broadcast,0xFF, ETH_ALEN);

 dev->flags = IFF_BROADCAST|IFF_MULTICAST;
}

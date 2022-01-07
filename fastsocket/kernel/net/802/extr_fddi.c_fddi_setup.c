
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_queue_len; int flags; int broadcast; int addr_len; int mtu; scalar_t__ hard_header_len; int type; int * header_ops; } ;


 int ARPHRD_FDDI ;
 int FDDI_K_ALEN ;
 int FDDI_K_SNAP_DLEN ;
 scalar_t__ FDDI_K_SNAP_HLEN ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int fddi_header_ops ;
 int memset (int ,int,int ) ;

__attribute__((used)) static void fddi_setup(struct net_device *dev)
{
 dev->header_ops = &fddi_header_ops;
 dev->type = ARPHRD_FDDI;
 dev->hard_header_len = FDDI_K_SNAP_HLEN+3;
 dev->mtu = FDDI_K_SNAP_DLEN;
 dev->addr_len = FDDI_K_ALEN;
 dev->tx_queue_len = 100;
 dev->flags = IFF_BROADCAST | IFF_MULTICAST;

 memset(dev->broadcast, 0xFF, FDDI_K_ALEN);
}

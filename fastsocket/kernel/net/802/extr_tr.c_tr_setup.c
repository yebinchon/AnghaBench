
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; int tx_queue_len; int flags; int broadcast; int addr_len; int hard_header_len; int type; int * header_ops; } ;


 int ARPHRD_IEEE802_TR ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int TR_ALEN ;
 int TR_HLEN ;
 int memset (int ,int,int ) ;
 int tr_header_ops ;

__attribute__((used)) static void tr_setup(struct net_device *dev)
{




 dev->header_ops = &tr_header_ops;

 dev->type = ARPHRD_IEEE802_TR;
 dev->hard_header_len = TR_HLEN;
 dev->mtu = 2000;
 dev->addr_len = TR_ALEN;
 dev->tx_queue_len = 100;

 memset(dev->broadcast,0xFF, TR_ALEN);


 dev->flags = IFF_BROADCAST | IFF_MULTICAST ;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; int tx_queue_len; int broadcast; int flags; int addr_len; int hard_header_len; int type; int * header_ops; } ;


 int ARPHRD_IEEE802 ;
 int FC_ALEN ;
 int FC_HLEN ;
 int IFF_BROADCAST ;
 int fc_header_ops ;
 int memset (int ,int,int ) ;

__attribute__((used)) static void fc_setup(struct net_device *dev)
{
 dev->header_ops = &fc_header_ops;
 dev->type = ARPHRD_IEEE802;
 dev->hard_header_len = FC_HLEN;
 dev->mtu = 2024;
 dev->addr_len = FC_ALEN;
 dev->tx_queue_len = 100;
 dev->flags = IFF_BROADCAST;

 memset(dev->broadcast, 0xFF, FC_ALEN);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_queue_len; int mtu; int flags; int broadcast; int type; int addr_len; scalar_t__ hard_header_len; } ;


 int ARPHRD_IRDA ;
 int IFF_NOARP ;
 int LAP_ALEN ;
 int memset (int ,int,int ) ;

__attribute__((used)) static void irda_device_setup(struct net_device *dev)
{
 dev->hard_header_len = 0;
 dev->addr_len = LAP_ALEN;

 dev->type = ARPHRD_IRDA;
 dev->tx_queue_len = 8;

 memset(dev->broadcast, 0xff, LAP_ALEN);

 dev->mtu = 2048;
 dev->flags = IFF_NOARP;
}

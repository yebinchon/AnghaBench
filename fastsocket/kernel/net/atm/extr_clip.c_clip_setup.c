
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_queue_len; int priv_flags; int mtu; int hard_header_len; int type; int * netdev_ops; } ;


 int ARPHRD_ATM ;
 int IFF_XMIT_DST_RELEASE ;
 int RFC1483LLC_LEN ;
 int RFC1626_MTU ;
 int clip_netdev_ops ;

__attribute__((used)) static void clip_setup(struct net_device *dev)
{
 dev->netdev_ops = &clip_netdev_ops;
 dev->type = ARPHRD_ATM;
 dev->hard_header_len = RFC1483LLC_LEN;
 dev->mtu = RFC1626_MTU;
 dev->tx_queue_len = 100;





 dev->priv_flags &= ~IFF_XMIT_DST_RELEASE;
}

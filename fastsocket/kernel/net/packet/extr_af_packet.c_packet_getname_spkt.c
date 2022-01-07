
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr {int sa_data; int sa_family; } ;
struct sock {int dummy; } ;
struct net_device {int name; } ;
struct TYPE_2__ {int ifindex; } ;


 int AF_PACKET ;
 int EOPNOTSUPP ;
 struct net_device* dev_get_by_index (int ,int ) ;
 int dev_put (struct net_device*) ;
 int memset (int ,int ,int) ;
 TYPE_1__* pkt_sk (struct sock*) ;
 int sock_net (struct sock*) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int packet_getname_spkt(struct socket *sock, struct sockaddr *uaddr,
          int *uaddr_len, int peer)
{
 struct net_device *dev;
 struct sock *sk = sock->sk;

 if (peer)
  return -EOPNOTSUPP;

 uaddr->sa_family = AF_PACKET;
 dev = dev_get_by_index(sock_net(sk), pkt_sk(sk)->ifindex);
 if (dev) {
  strncpy(uaddr->sa_data, dev->name, 14);
  dev_put(dev);
 } else
  memset(uaddr->sa_data, 0, 14);
 *uaddr_len = sizeof(*uaddr);

 return 0;
}

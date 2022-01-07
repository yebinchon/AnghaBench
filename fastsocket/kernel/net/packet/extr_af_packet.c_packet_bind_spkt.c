
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr {int sa_data; } ;
struct sock {int dummy; } ;
struct net_device {int dummy; } ;
typedef int name ;
struct TYPE_2__ {int num; } ;


 int EINVAL ;
 int ENODEV ;
 struct net_device* dev_get_by_name (int ,char*) ;
 int dev_put (struct net_device*) ;
 int packet_do_bind (struct sock*,struct net_device*,int ) ;
 TYPE_1__* pkt_sk (struct sock*) ;
 int sock_net (struct sock*) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static int packet_bind_spkt(struct socket *sock, struct sockaddr *uaddr,
       int addr_len)
{
 struct sock *sk = sock->sk;
 char name[15];
 struct net_device *dev;
 int err = -ENODEV;





 if (addr_len != sizeof(struct sockaddr))
  return -EINVAL;
 strlcpy(name, uaddr->sa_data, sizeof(name));

 dev = dev_get_by_name(sock_net(sk), name);
 if (dev) {
  err = packet_do_bind(sk, dev, pkt_sk(sk)->num);
  dev_put(dev);
 }
 return err;
}

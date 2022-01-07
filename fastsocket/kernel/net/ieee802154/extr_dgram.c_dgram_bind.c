
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ieee802154 {scalar_t__ family; int addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct net_device {scalar_t__ type; } ;
struct ieee802154_addr {int dummy; } ;
struct dgram_sock {int bound; int src_addr; } ;


 scalar_t__ AF_IEEE802154 ;
 scalar_t__ ARPHRD_IEEE802154 ;
 int EINVAL ;
 int ENODEV ;
 int dev_put (struct net_device*) ;
 struct dgram_sock* dgram_sk (struct sock*) ;
 struct net_device* ieee802154_get_dev (int ,int *) ;
 int lock_sock (struct sock*) ;
 int memcpy (int *,int *,int) ;
 int release_sock (struct sock*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static int dgram_bind(struct sock *sk, struct sockaddr *uaddr, int len)
{
 struct sockaddr_ieee802154 *addr = (struct sockaddr_ieee802154 *)uaddr;
 struct dgram_sock *ro = dgram_sk(sk);
 int err = -EINVAL;
 struct net_device *dev;

 lock_sock(sk);

 ro->bound = 0;

 if (len < sizeof(*addr))
  goto out;

 if (addr->family != AF_IEEE802154)
  goto out;

 dev = ieee802154_get_dev(sock_net(sk), &addr->addr);
 if (!dev) {
  err = -ENODEV;
  goto out;
 }

 if (dev->type != ARPHRD_IEEE802154) {
  err = -ENODEV;
  goto out_put;
 }

 memcpy(&ro->src_addr, &addr->addr, sizeof(struct ieee802154_addr));

 ro->bound = 1;
 err = 0;
out_put:
 dev_put(dev);
out:
 release_sock(sk);

 return err;
}

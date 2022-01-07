
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ieee802154 {scalar_t__ family; int addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_bound_dev_if; } ;
struct net_device {scalar_t__ type; int ifindex; } ;


 scalar_t__ AF_IEEE802154 ;
 scalar_t__ ARPHRD_IEEE802154 ;
 int EINVAL ;
 int ENODEV ;
 int dev_put (struct net_device*) ;
 struct net_device* ieee802154_get_dev (int ,int *) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sk_dst_reset (struct sock*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static int raw_bind(struct sock *sk, struct sockaddr *uaddr, int len)
{
 struct sockaddr_ieee802154 *addr = (struct sockaddr_ieee802154 *)uaddr;
 int err = 0;
 struct net_device *dev = ((void*)0);

 if (len < sizeof(*addr))
  return -EINVAL;

 if (addr->family != AF_IEEE802154)
  return -EINVAL;

 lock_sock(sk);

 dev = ieee802154_get_dev(sock_net(sk), &addr->addr);
 if (!dev) {
  err = -ENODEV;
  goto out;
 }

 if (dev->type != ARPHRD_IEEE802154) {
  err = -ENODEV;
  goto out_put;
 }

 sk->sk_bound_dev_if = dev->ifindex;
 sk_dst_reset(sk);

out_put:
 dev_put(dev);
out:
 release_sock(sk);

 return err;
}

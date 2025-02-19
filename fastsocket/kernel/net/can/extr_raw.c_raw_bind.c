
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_can {int can_ifindex; } ;
struct sockaddr {int dummy; } ;
struct sock {int (* sk_error_report ) (struct sock*) ;int sk_err; } ;
struct raw_sock {int bound; int ifindex; } ;
struct net_device {scalar_t__ type; int flags; int ifindex; } ;


 scalar_t__ ARPHRD_CAN ;
 int EINVAL ;
 int ENETDOWN ;
 int ENODEV ;
 int IFF_UP ;
 int SOCK_DEAD ;
 struct net_device* dev_get_by_index (int *,int) ;
 int dev_put (struct net_device*) ;
 int init_net ;
 int lock_sock (struct sock*) ;
 int raw_disable_allfilters (struct net_device*,struct sock*) ;
 int raw_enable_allfilters (struct net_device*,struct sock*) ;
 struct raw_sock* raw_sk (struct sock*) ;
 int release_sock (struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int raw_bind(struct socket *sock, struct sockaddr *uaddr, int len)
{
 struct sockaddr_can *addr = (struct sockaddr_can *)uaddr;
 struct sock *sk = sock->sk;
 struct raw_sock *ro = raw_sk(sk);
 int ifindex;
 int err = 0;
 int notify_enetdown = 0;

 if (len < sizeof(*addr))
  return -EINVAL;

 lock_sock(sk);

 if (ro->bound && addr->can_ifindex == ro->ifindex)
  goto out;

 if (addr->can_ifindex) {
  struct net_device *dev;

  dev = dev_get_by_index(&init_net, addr->can_ifindex);
  if (!dev) {
   err = -ENODEV;
   goto out;
  }
  if (dev->type != ARPHRD_CAN) {
   dev_put(dev);
   err = -ENODEV;
   goto out;
  }
  if (!(dev->flags & IFF_UP))
   notify_enetdown = 1;

  ifindex = dev->ifindex;


  err = raw_enable_allfilters(dev, sk);
  dev_put(dev);
 } else {
  ifindex = 0;


  err = raw_enable_allfilters(((void*)0), sk);
 }

 if (!err) {
  if (ro->bound) {

   if (ro->ifindex) {
    struct net_device *dev;

    dev = dev_get_by_index(&init_net, ro->ifindex);
    if (dev) {
     raw_disable_allfilters(dev, sk);
     dev_put(dev);
    }
   } else
    raw_disable_allfilters(((void*)0), sk);
  }
  ro->ifindex = ifindex;
  ro->bound = 1;
 }

 out:
 release_sock(sk);

 if (notify_enetdown) {
  sk->sk_err = ENETDOWN;
  if (!sock_flag(sk, SOCK_DEAD))
   sk->sk_error_report(sk);
 }

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_bound_dev_if; } ;
struct net_device {scalar_t__ ifindex; } ;
struct inet_sock {scalar_t__ mc_index; } ;


 int EINVAL ;
 int ENODEV ;
 struct net_device* __dev_get_by_name (int *,char*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int init_net ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int set_mcast_if(struct sock *sk, char *ifname)
{
 struct net_device *dev;
 struct inet_sock *inet = inet_sk(sk);

 if ((dev = __dev_get_by_name(&init_net, ifname)) == ((void*)0))
  return -ENODEV;

 if (sk->sk_bound_dev_if && dev->ifindex != sk->sk_bound_dev_if)
  return -EINVAL;

 lock_sock(sk);
 inet->mc_index = dev->ifindex;

 release_sock(sk);

 return 0;
}

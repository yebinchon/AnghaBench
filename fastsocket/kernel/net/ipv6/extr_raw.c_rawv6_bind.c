
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; scalar_t__ sin6_scope_id; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_bound_dev_if; } ;
struct net_device {int dummy; } ;
struct ipv6_pinfo {int saddr; int rcv_saddr; } ;
struct inet_sock {int saddr; int rcv_saddr; } ;
typedef int __be32 ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENODEV ;
 int IPV6_ADDR_ANY ;
 int IPV6_ADDR_LINKLOCAL ;
 int IPV6_ADDR_MAPPED ;
 int IPV6_ADDR_MULTICAST ;
 int LOOPBACK4_IPV6 ;
 int SIN6_LEN_RFC2133 ;
 scalar_t__ TCP_CLOSE ;
 struct net_device* dev_get_by_index (int ,scalar_t__) ;
 int dev_put (struct net_device*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ipv6_addr_copy (int *,int *) ;
 int ipv6_addr_type (int *) ;
 int ipv6_chk_addr (int ,int *,struct net_device*,int ) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static int rawv6_bind(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
 struct inet_sock *inet = inet_sk(sk);
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct sockaddr_in6 *addr = (struct sockaddr_in6 *) uaddr;
 __be32 v4addr = 0;
 int addr_type;
 int err;

 if (addr_len < SIN6_LEN_RFC2133)
  return -EINVAL;
 addr_type = ipv6_addr_type(&addr->sin6_addr);


 if (addr_type == IPV6_ADDR_MAPPED)
  return(-EADDRNOTAVAIL);

 lock_sock(sk);

 err = -EINVAL;
 if (sk->sk_state != TCP_CLOSE)
  goto out;


 if (addr_type != IPV6_ADDR_ANY) {
  struct net_device *dev = ((void*)0);

  if (addr_type & IPV6_ADDR_LINKLOCAL) {
   if (addr_len >= sizeof(struct sockaddr_in6) &&
       addr->sin6_scope_id) {



    sk->sk_bound_dev_if = addr->sin6_scope_id;
   }


   if (!sk->sk_bound_dev_if)
    goto out;

   dev = dev_get_by_index(sock_net(sk), sk->sk_bound_dev_if);
   if (!dev) {
    err = -ENODEV;
    goto out;
   }
  }




  v4addr = LOOPBACK4_IPV6;
  if (!(addr_type & IPV6_ADDR_MULTICAST)) {
   err = -EADDRNOTAVAIL;
   if (!ipv6_chk_addr(sock_net(sk), &addr->sin6_addr,
        dev, 0)) {
    if (dev)
     dev_put(dev);
    goto out;
   }
  }
  if (dev)
   dev_put(dev);
 }

 inet->rcv_saddr = inet->saddr = v4addr;
 ipv6_addr_copy(&np->rcv_saddr, &addr->sin6_addr);
 if (!(addr_type & IPV6_ADDR_MULTICAST))
  ipv6_addr_copy(&np->saddr, &addr->sin6_addr);
 err = 0;
out:
 release_sock(sk);
 return err;
}

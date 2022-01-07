
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {scalar_t__ type; struct sock* sk; } ;
struct TYPE_6__ {scalar_t__* s6_addr32; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; scalar_t__ sin6_scope_id; int sin6_port; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_userlocks; TYPE_1__* sk_prot; scalar_t__ sk_bound_dev_if; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {int ipv6only; int saddr; int rcv_saddr; } ;
struct inet_sock {scalar_t__ daddr; scalar_t__ dport; scalar_t__ num; int sport; scalar_t__ saddr; scalar_t__ rcv_saddr; scalar_t__ transparent; scalar_t__ freebind; } ;
typedef scalar_t__ __be32 ;
struct TYPE_5__ {int (* bind ) (struct sock*,struct sockaddr*,int) ;scalar_t__ (* get_port ) (struct sock*,unsigned short) ;} ;


 int CAP_NET_BIND_SERVICE ;
 int EACCES ;
 int EADDRINUSE ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENODEV ;
 int INADDR_ANY ;
 int IPV6_ADDR_ANY ;
 int IPV6_ADDR_LINKLOCAL ;
 int IPV6_ADDR_MAPPED ;
 int IPV6_ADDR_MULTICAST ;
 scalar_t__ LOOPBACK4_IPV6 ;
 unsigned short PROT_SOCK ;
 int RTN_BROADCAST ;
 int RTN_LOCAL ;
 int RTN_MULTICAST ;
 int SIN6_LEN_RFC2133 ;
 int SOCK_BINDADDR_LOCK ;
 int SOCK_BINDPORT_LOCK ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ TCP_CLOSE ;
 int capable (int ) ;
 struct net_device* dev_get_by_index (struct net*,scalar_t__) ;
 int dev_put (struct net_device*) ;
 scalar_t__ htonl (int ) ;
 int htons (scalar_t__) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int inet_addr_type (struct net*,scalar_t__) ;
 int inet_reset_saddr (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ipv6_addr_copy (int *,TYPE_2__*) ;
 int ipv6_addr_type (TYPE_2__*) ;
 int ipv6_chk_addr (struct net*,TYPE_2__*,struct net_device*,int ) ;
 int lock_sock (struct sock*) ;
 unsigned short ntohs (int ) ;
 int release_sock (struct sock*) ;
 struct net* sock_net (struct sock*) ;
 int stub1 (struct sock*,struct sockaddr*,int) ;
 scalar_t__ stub2 (struct sock*,unsigned short) ;
 int sysctl_ip_nonlocal_bind ;

int inet6_bind(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
 struct sockaddr_in6 *addr=(struct sockaddr_in6 *)uaddr;
 struct sock *sk = sock->sk;
 struct inet_sock *inet = inet_sk(sk);
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct net *net = sock_net(sk);
 __be32 v4addr = 0;
 unsigned short snum;
 int addr_type = 0;
 int err = 0;


 if (sk->sk_prot->bind)
  return sk->sk_prot->bind(sk, uaddr, addr_len);

 if (addr_len < SIN6_LEN_RFC2133)
  return -EINVAL;
 addr_type = ipv6_addr_type(&addr->sin6_addr);
 if ((addr_type & IPV6_ADDR_MULTICAST) && sock->type == SOCK_STREAM)
  return -EINVAL;

 snum = ntohs(addr->sin6_port);
 if (snum && snum < PROT_SOCK && !capable(CAP_NET_BIND_SERVICE))
  return -EACCES;

 lock_sock(sk);


 if (sk->sk_state != TCP_CLOSE || inet->num) {
  err = -EINVAL;
  goto out;
 }


 if (addr_type == IPV6_ADDR_MAPPED) {
  int chk_addr_ret;




  if (np->ipv6only) {
   err = -EINVAL;
   goto out;
  }


  v4addr = addr->sin6_addr.s6_addr32[3];
  chk_addr_ret = inet_addr_type(net, v4addr);
  if (!sysctl_ip_nonlocal_bind &&
      !(inet->freebind || inet->transparent) &&
      v4addr != htonl(INADDR_ANY) &&
      chk_addr_ret != RTN_LOCAL &&
      chk_addr_ret != RTN_MULTICAST &&
      chk_addr_ret != RTN_BROADCAST) {
   err = -EADDRNOTAVAIL;
   goto out;
  }
 } else {
  if (addr_type != IPV6_ADDR_ANY) {
   struct net_device *dev = ((void*)0);

   if (addr_type & IPV6_ADDR_LINKLOCAL) {
    if (addr_len >= sizeof(struct sockaddr_in6) &&
        addr->sin6_scope_id) {



     sk->sk_bound_dev_if = addr->sin6_scope_id;
    }


    if (!sk->sk_bound_dev_if) {
     err = -EINVAL;
     goto out;
    }
    dev = dev_get_by_index(net, sk->sk_bound_dev_if);
    if (!dev) {
     err = -ENODEV;
     goto out;
    }
   }




   v4addr = LOOPBACK4_IPV6;
   if (!(addr_type & IPV6_ADDR_MULTICAST)) {
    if (!inet->transparent &&
        !ipv6_chk_addr(net, &addr->sin6_addr,
         dev, 0)) {
     if (dev)
      dev_put(dev);
     err = -EADDRNOTAVAIL;
     goto out;
    }
   }
   if (dev)
    dev_put(dev);
  }
 }

 inet->rcv_saddr = v4addr;
 inet->saddr = v4addr;

 ipv6_addr_copy(&np->rcv_saddr, &addr->sin6_addr);

 if (!(addr_type & IPV6_ADDR_MULTICAST))
  ipv6_addr_copy(&np->saddr, &addr->sin6_addr);


 if (sk->sk_prot->get_port(sk, snum)) {
  inet_reset_saddr(sk);
  err = -EADDRINUSE;
  goto out;
 }

 if (addr_type != IPV6_ADDR_ANY) {
  sk->sk_userlocks |= SOCK_BINDADDR_LOCK;
  if (addr_type != IPV6_ADDR_MAPPED)
   np->ipv6only = 1;
 }
 if (snum)
  sk->sk_userlocks |= SOCK_BINDPORT_LOCK;
 inet->sport = htons(inet->num);
 inet->dport = 0;
 inet->daddr = 0;
out:
 release_sock(sk);
 return err;
}

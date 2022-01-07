
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_rose {scalar_t__ srose_family; int srose_ndigis; int srose_digi; int srose_addr; int srose_call; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct rose_sock {int source_ndigis; int * source_digis; struct net_device* device; int source_addr; int source_call; } ;
struct net_device {int dummy; } ;
struct full_sockaddr_rose {int * srose_digis; } ;
struct TYPE_4__ {int call; } ;
typedef TYPE_1__ ax25_uid_assoc ;
typedef int ax25_address ;


 scalar_t__ AF_ROSE ;
 int CAP_NET_BIND_SERVICE ;
 int EACCES ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ROSE_MAX_DIGIS ;
 int SOCK_DEBUG (struct sock*,char*) ;
 int SOCK_ZAPPED ;
 TYPE_1__* ax25_findbyuid (int ) ;
 scalar_t__ ax25_uid_policy ;
 int ax25_uid_put (TYPE_1__*) ;
 int capable (int ) ;
 int current_euid () ;
 struct net_device* rose_dev_get (int *) ;
 int rose_insert_socket (struct sock*) ;
 struct rose_sock* rose_sk (struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_reset_flag (struct sock*,int ) ;

__attribute__((used)) static int rose_bind(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
 struct sock *sk = sock->sk;
 struct rose_sock *rose = rose_sk(sk);
 struct sockaddr_rose *addr = (struct sockaddr_rose *)uaddr;
 struct net_device *dev;
 ax25_address *source;
 ax25_uid_assoc *user;
 int n;

 if (!sock_flag(sk, SOCK_ZAPPED))
  return -EINVAL;

 if (addr_len != sizeof(struct sockaddr_rose) && addr_len != sizeof(struct full_sockaddr_rose))
  return -EINVAL;

 if (addr->srose_family != AF_ROSE)
  return -EINVAL;

 if (addr_len == sizeof(struct sockaddr_rose) && addr->srose_ndigis > 1)
  return -EINVAL;

 if (addr->srose_ndigis > ROSE_MAX_DIGIS)
  return -EINVAL;

 if ((dev = rose_dev_get(&addr->srose_addr)) == ((void*)0)) {
  SOCK_DEBUG(sk, "ROSE: bind failed: invalid address\n");
  return -EADDRNOTAVAIL;
 }

 source = &addr->srose_call;

 user = ax25_findbyuid(current_euid());
 if (user) {
  rose->source_call = user->call;
  ax25_uid_put(user);
 } else {
  if (ax25_uid_policy && !capable(CAP_NET_BIND_SERVICE))
   return -EACCES;
  rose->source_call = *source;
 }

 rose->source_addr = addr->srose_addr;
 rose->device = dev;
 rose->source_ndigis = addr->srose_ndigis;

 if (addr_len == sizeof(struct full_sockaddr_rose)) {
  struct full_sockaddr_rose *full_addr = (struct full_sockaddr_rose *)uaddr;
  for (n = 0 ; n < addr->srose_ndigis ; n++)
   rose->source_digis[n] = full_addr->srose_digis[n];
 } else {
  if (rose->source_ndigis == 1) {
   rose->source_digis[0] = addr->srose_digi;
  }
 }

 rose_insert_socket(sk);

 sock_reset_flag(sk, SOCK_ZAPPED);
 SOCK_DEBUG(sk, "ROSE: socket is bound\n");
 return 0;
}

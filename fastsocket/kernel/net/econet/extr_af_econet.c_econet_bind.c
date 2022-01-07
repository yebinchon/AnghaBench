
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_2__ {int net; int station; } ;
struct sockaddr_ec {scalar_t__ sec_family; TYPE_1__ addr; int port; int cb; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct econet_sock {int net; int station; int port; int cb; } ;


 scalar_t__ AF_ECONET ;
 int EINVAL ;
 struct econet_sock* ec_sk (struct sock*) ;
 int econet_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int econet_bind(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
 struct sockaddr_ec *sec = (struct sockaddr_ec *)uaddr;
 struct sock *sk;
 struct econet_sock *eo;





 if (addr_len < sizeof(struct sockaddr_ec) ||
     sec->sec_family != AF_ECONET)
  return -EINVAL;

 mutex_lock(&econet_mutex);

 sk = sock->sk;
 eo = ec_sk(sk);

 eo->cb = sec->cb;
 eo->port = sec->port;
 eo->station = sec->addr.station;
 eo->net = sec->addr.net;

 mutex_unlock(&econet_mutex);

 return 0;
}

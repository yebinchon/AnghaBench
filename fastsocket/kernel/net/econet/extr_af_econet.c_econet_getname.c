
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_2__ {int net; int station; } ;
struct sockaddr_ec {TYPE_1__ addr; int port; int sec_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct econet_sock {int net; int station; int port; } ;


 int AF_ECONET ;
 int EOPNOTSUPP ;
 struct econet_sock* ec_sk (struct sock*) ;
 int econet_mutex ;
 int memset (struct sockaddr_ec*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int econet_getname(struct socket *sock, struct sockaddr *uaddr,
     int *uaddr_len, int peer)
{
 struct sock *sk;
 struct econet_sock *eo;
 struct sockaddr_ec *sec = (struct sockaddr_ec *)uaddr;

 if (peer)
  return -EOPNOTSUPP;

 memset(sec, 0, sizeof(*sec));
 mutex_lock(&econet_mutex);

 sk = sock->sk;
 eo = ec_sk(sk);

 sec->sec_family = AF_ECONET;
 sec->port = eo->port;
 sec->addr.station = eo->station;
 sec->addr.net = eo->net;

 mutex_unlock(&econet_mutex);

 *uaddr_len = sizeof(*sec);
 return 0;
}

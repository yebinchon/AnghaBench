
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_can {int can_ifindex; int can_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct raw_sock {int ifindex; } ;


 int AF_CAN ;
 int EOPNOTSUPP ;
 int memset (struct sockaddr_can*,int ,int) ;
 struct raw_sock* raw_sk (struct sock*) ;

__attribute__((used)) static int raw_getname(struct socket *sock, struct sockaddr *uaddr,
         int *len, int peer)
{
 struct sockaddr_can *addr = (struct sockaddr_can *)uaddr;
 struct sock *sk = sock->sk;
 struct raw_sock *ro = raw_sk(sk);

 if (peer)
  return -EOPNOTSUPP;

 memset(addr, 0, sizeof(*addr));
 addr->can_family = AF_CAN;
 addr->can_ifindex = ro->ifindex;

 *len = sizeof(*addr);

 return 0;
}

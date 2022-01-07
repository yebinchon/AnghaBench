
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; } ;
struct sock {int dummy; } ;
struct net {int dummy; } ;


 int AF_RDS ;
 int ENOMEM ;
 int ESOCKTNOSUPPORT ;
 int GFP_ATOMIC ;
 scalar_t__ SOCK_SEQPACKET ;
 int __rds_create (struct socket*,struct sock*,int) ;
 int rds_proto ;
 struct sock* sk_alloc (struct net*,int ,int ,int *) ;

__attribute__((used)) static int rds_create(struct net *net, struct socket *sock, int protocol,
        int kern)
{
 struct sock *sk;

 if (sock->type != SOCK_SEQPACKET || protocol)
  return -ESOCKTNOSUPPORT;

 sk = sk_alloc(net, AF_RDS, GFP_ATOMIC, &rds_proto);
 if (!sk)
  return -ENOMEM;

 return __rds_create(sock, sk, protocol);
}

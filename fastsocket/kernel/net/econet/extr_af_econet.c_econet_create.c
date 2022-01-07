
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; int * ops; int state; } ;
struct sock {int sk_reuse; int sk_family; } ;
struct net {int dummy; } ;
struct econet_sock {int num; } ;


 int EAFNOSUPPORT ;
 int ENOBUFS ;
 int ESOCKTNOSUPPORT ;
 int GFP_KERNEL ;
 int PF_ECONET ;
 scalar_t__ SOCK_DGRAM ;
 int SOCK_ZAPPED ;
 int SS_UNCONNECTED ;
 struct econet_sock* ec_sk (struct sock*) ;
 int econet_insert_socket (int *,struct sock*) ;
 int econet_ops ;
 int econet_proto ;
 int econet_sklist ;
 struct net init_net ;
 struct sock* sk_alloc (struct net*,int ,int ,int *) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;

__attribute__((used)) static int econet_create(struct net *net, struct socket *sock, int protocol,
    int kern)
{
 struct sock *sk;
 struct econet_sock *eo;
 int err;

 if (net != &init_net)
  return -EAFNOSUPPORT;


 if (sock->type != SOCK_DGRAM)
  return -ESOCKTNOSUPPORT;

 sock->state = SS_UNCONNECTED;

 err = -ENOBUFS;
 sk = sk_alloc(net, PF_ECONET, GFP_KERNEL, &econet_proto);
 if (sk == ((void*)0))
  goto out;

 sk->sk_reuse = 1;
 sock->ops = &econet_ops;
 sock_init_data(sock, sk);

 eo = ec_sk(sk);
 sock_reset_flag(sk, SOCK_ZAPPED);
 sk->sk_family = PF_ECONET;
 eo->num = protocol;

 econet_insert_socket(&econet_sklist, sk);
 return(0);
out:
 return err;
}

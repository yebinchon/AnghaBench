
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int type; int * ops; } ;
struct sock {int sk_protocol; int sk_destruct; TYPE_1__* sk_protinfo; } ;
struct net {int dummy; } ;
struct TYPE_3__ {struct sock* sk; } ;
typedef TYPE_1__ ax25_cb ;







 int AX25_P_TEXT ;
 int EAFNOSUPPORT ;
 int ENOMEM ;
 int ESOCKTNOSUPPORT ;
 int GFP_ATOMIC ;




 TYPE_1__* ax25_create_cb () ;
 int ax25_free_sock ;
 int ax25_proto ;
 int ax25_proto_ops ;
 int ax25_protocol_is_registered (int const) ;
 struct net init_net ;
 struct sock* sk_alloc (struct net*,int,int ,int *) ;
 int sk_free (struct sock*) ;
 int sock_init_data (struct socket*,struct sock*) ;

__attribute__((used)) static int ax25_create(struct net *net, struct socket *sock, int protocol,
         int kern)
{
 struct sock *sk;
 ax25_cb *ax25;

 if (net != &init_net)
  return -EAFNOSUPPORT;

 switch (sock->type) {
 case 130:
  if (protocol == 0 || protocol == 131)
   protocol = AX25_P_TEXT;
  break;

 case 128:
  switch (protocol) {
  case 0:
  case 131:
   protocol = AX25_P_TEXT;
   break;
  case 132:
   return -ESOCKTNOSUPPORT;
  default:
   break;
  }
  break;

 case 129:
  break;
 default:
  return -ESOCKTNOSUPPORT;
 }

 sk = sk_alloc(net, 131, GFP_ATOMIC, &ax25_proto);
 if (sk == ((void*)0))
  return -ENOMEM;

 ax25 = sk->sk_protinfo = ax25_create_cb();
 if (!ax25) {
  sk_free(sk);
  return -ENOMEM;
 }

 sock_init_data(sock, sk);

 sk->sk_destruct = ax25_free_sock;
 sock->ops = &ax25_proto_ops;
 sk->sk_protocol = protocol;

 ax25->sk = sk;

 return 0;
}

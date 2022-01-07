
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; int * ops; int state; } ;
struct sock {int dummy; } ;
struct net {int dummy; } ;


 int BT_DBG (char*,struct socket*) ;
 int CAP_NET_RAW ;
 int ENOMEM ;
 int EPERM ;
 int ESOCKTNOSUPPORT ;
 int GFP_ATOMIC ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_RAW ;
 scalar_t__ SOCK_SEQPACKET ;
 int SS_UNCONNECTED ;
 int capable (int ) ;
 struct sock* l2cap_sock_alloc (struct net*,struct socket*,int,int ) ;
 int l2cap_sock_init (struct sock*,int *) ;
 int l2cap_sock_ops ;

__attribute__((used)) static int l2cap_sock_create(struct net *net, struct socket *sock, int protocol,
        int kern)
{
 struct sock *sk;

 BT_DBG("sock %p", sock);

 sock->state = SS_UNCONNECTED;

 if (sock->type != SOCK_SEQPACKET &&
   sock->type != SOCK_DGRAM && sock->type != SOCK_RAW)
  return -ESOCKTNOSUPPORT;

 if (sock->type == SOCK_RAW && !kern && !capable(CAP_NET_RAW))
  return -EPERM;

 sock->ops = &l2cap_sock_ops;

 sk = l2cap_sock_alloc(net, sock, protocol, GFP_ATOMIC);
 if (!sk)
  return -ENOMEM;

 l2cap_sock_init(sk, ((void*)0));
 return 0;
}

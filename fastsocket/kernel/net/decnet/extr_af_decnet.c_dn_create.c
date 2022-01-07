
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int type; } ;
struct sock {int sk_protocol; } ;
struct net {int dummy; } ;


 int DNPROTO_NSP ;
 int EAFNOSUPPORT ;
 int ENOBUFS ;
 int EPROTONOSUPPORT ;
 int ESOCKTNOSUPPORT ;
 int GFP_KERNEL ;


 struct sock* dn_alloc_sock (struct net*,struct socket*,int ) ;
 struct net init_net ;

__attribute__((used)) static int dn_create(struct net *net, struct socket *sock, int protocol,
       int kern)
{
 struct sock *sk;

 if (net != &init_net)
  return -EAFNOSUPPORT;

 switch(sock->type) {
  case 129:
   if (protocol != DNPROTO_NSP)
    return -EPROTONOSUPPORT;
   break;
  case 128:
   break;
  default:
   return -ESOCKTNOSUPPORT;
 }


 if ((sk = dn_alloc_sock(net, sock, GFP_KERNEL)) == ((void*)0))
  return -ENOBUFS;

 sk->sk_protocol = protocol;

 return 0;
}

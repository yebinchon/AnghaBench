
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int type; int * ops; int state; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int ESOCKTNOSUPPORT ;
 int PF_UNIX ;




 int SS_UNCONNECTED ;
 scalar_t__ unix_create1 (struct net*,struct socket*) ;
 int unix_dgram_ops ;
 int unix_seqpacket_ops ;
 int unix_stream_ops ;

__attribute__((used)) static int unix_create(struct net *net, struct socket *sock, int protocol,
         int kern)
{
 if (protocol && protocol != PF_UNIX)
  return -EPROTONOSUPPORT;

 sock->state = SS_UNCONNECTED;

 switch (sock->type) {
 case 128:
  sock->ops = &unix_stream_ops;
  break;




 case 130:
  sock->type = 131;
 case 131:
  sock->ops = &unix_dgram_ops;
  break;
 case 129:
  sock->ops = &unix_seqpacket_ops;
  break;
 default:
  return -ESOCKTNOSUPPORT;
 }

 return unix_create1(net, sock) ? 0 : -ENOMEM;
}

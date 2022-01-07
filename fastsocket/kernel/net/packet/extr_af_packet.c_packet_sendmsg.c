
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ pg_vec; } ;
struct packet_sock {TYPE_1__ tx_ring; } ;
struct msghdr {int dummy; } ;
struct kiocb {int dummy; } ;


 int packet_snd (struct socket*,struct msghdr*,size_t) ;
 struct packet_sock* pkt_sk (struct sock*) ;
 int tpacket_snd (struct packet_sock*,struct msghdr*) ;

__attribute__((used)) static int packet_sendmsg(struct kiocb *iocb, struct socket *sock,
  struct msghdr *msg, size_t len)
{







  return packet_snd(sock, msg, len);
}

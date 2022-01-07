
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_2__ {int s_node; int s_net; } ;
struct sockaddr_at {int sat_family; int sat_port; TYPE_1__ sat_addr; int sat_zero; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct atalk_sock {int src_port; int src_node; int src_net; int dest_port; int dest_node; int dest_net; } ;
typedef int sat ;


 int AF_APPLETALK ;
 int ENOBUFS ;
 int ENOTCONN ;
 int SOCK_ZAPPED ;
 scalar_t__ TCP_ESTABLISHED ;
 struct atalk_sock* at_sk (struct sock*) ;
 scalar_t__ atalk_autobind (struct sock*) ;
 int memcpy (struct sockaddr*,struct sockaddr_at*,int) ;
 int memset (int *,int ,int) ;
 scalar_t__ sock_flag (struct sock*,int ) ;

__attribute__((used)) static int atalk_getname(struct socket *sock, struct sockaddr *uaddr,
    int *uaddr_len, int peer)
{
 struct sockaddr_at sat;
 struct sock *sk = sock->sk;
 struct atalk_sock *at = at_sk(sk);

 if (sock_flag(sk, SOCK_ZAPPED))
  if (atalk_autobind(sk) < 0)
   return -ENOBUFS;

 *uaddr_len = sizeof(struct sockaddr_at);
 memset(&sat.sat_zero, 0, sizeof(sat.sat_zero));

 if (peer) {
  if (sk->sk_state != TCP_ESTABLISHED)
   return -ENOTCONN;

  sat.sat_addr.s_net = at->dest_net;
  sat.sat_addr.s_node = at->dest_node;
  sat.sat_port = at->dest_port;
 } else {
  sat.sat_addr.s_net = at->src_net;
  sat.sat_addr.s_node = at->src_node;
  sat.sat_port = at->src_port;
 }

 sat.sat_family = AF_APPLETALK;
 memcpy(uaddr, &sat, sizeof(sat));
 return 0;
}

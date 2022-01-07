
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ reordering; scalar_t__ retrans_out; scalar_t__ retrans_stamp; } ;
struct sock {int dummy; } ;


 int DBGUNDO (struct sock*,char*) ;
 int LINUX_MIB_TCPPARTIALUNDO ;
 int NET_INC_STATS_BH (int ,int ) ;
 int sock_net (struct sock*) ;
 scalar_t__ tcp_fackets_out (struct tcp_sock*) ;
 scalar_t__ tcp_is_reno (struct tcp_sock*) ;
 scalar_t__ tcp_may_undo (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_undo_cwr (struct sock*,int) ;
 int tcp_update_reordering (struct sock*,scalar_t__,int) ;

__attribute__((used)) static int tcp_try_undo_partial(struct sock *sk, int acked)
{
 struct tcp_sock *tp = tcp_sk(sk);

 int failed = tcp_is_reno(tp) || (tcp_fackets_out(tp) > tp->reordering);

 if (tcp_may_undo(tp)) {



  if (tp->retrans_out == 0)
   tp->retrans_stamp = 0;

  tcp_update_reordering(sk, tcp_fackets_out(tp) + acked, 1);

  DBGUNDO(sk, "Hoe");
  tcp_undo_cwr(sk, 0);
  NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_TCPPARTIALUNDO);





  failed = 0;
 }
 return failed;
}

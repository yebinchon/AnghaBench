
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ undo_marker; int undo_retrans; } ;
struct sock {int dummy; } ;


 int DBGUNDO (struct sock*,char*) ;
 int LINUX_MIB_TCPDSACKUNDO ;
 int NET_INC_STATS_BH (int ,int ) ;
 int sock_net (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_undo_cwr (struct sock*,int) ;

__attribute__((used)) static void tcp_try_undo_dsack(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (tp->undo_marker && !tp->undo_retrans) {
  DBGUNDO(sk, "D-SACK");
  tcp_undo_cwr(sk, 1);
  tp->undo_marker = 0;
  NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_TCPDSACKUNDO);
 }
}

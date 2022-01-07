
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int snd_ssthresh; int snd_cwnd; } ;
struct sock {int dummy; } ;
struct htcp {int beta; scalar_t__ undo_last_cong; int undo_old_maxB; int old_maxB; int undo_maxRTT; int maxRTT; scalar_t__ last_cong; } ;


 struct htcp* inet_csk_ca (struct sock*) ;
 int max (int ,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static u32 htcp_cwnd_undo(struct sock *sk)
{
 const struct tcp_sock *tp = tcp_sk(sk);
 struct htcp *ca = inet_csk_ca(sk);

 if (ca->undo_last_cong) {
  ca->last_cong = ca->undo_last_cong;
  ca->maxRTT = ca->undo_maxRTT;
  ca->old_maxB = ca->undo_old_maxB;
  ca->undo_last_cong = 0;
 }

 return max(tp->snd_cwnd, (tp->snd_ssthresh << 7) / ca->beta);
}

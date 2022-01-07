
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dsack; } ;
struct tcp_sock {int duplicate_sack; TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;


 int tcp_dsack_set (struct sock*,int ,int ) ;
 int tcp_sack_extend (int ,int ,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_dsack_extend(struct sock *sk, u32 seq, u32 end_seq)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (!tp->rx_opt.dsack)
  tcp_dsack_set(sk, seq, end_seq);
 else
  tcp_sack_extend(tp->duplicate_sack, seq, end_seq);
}

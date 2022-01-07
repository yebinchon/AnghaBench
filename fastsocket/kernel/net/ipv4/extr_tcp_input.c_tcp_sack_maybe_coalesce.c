
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_sacks; } ;
struct tcp_sock {TYPE_1__ rx_opt; struct tcp_sack_block* selective_acks; } ;
struct tcp_sack_block {int end_seq; int start_seq; } ;


 scalar_t__ tcp_sack_extend (struct tcp_sack_block*,int ,int ) ;

__attribute__((used)) static void tcp_sack_maybe_coalesce(struct tcp_sock *tp)
{
 int this_sack;
 struct tcp_sack_block *sp = &tp->selective_acks[0];
 struct tcp_sack_block *swalk = sp + 1;




 for (this_sack = 1; this_sack < tp->rx_opt.num_sacks;) {
  if (tcp_sack_extend(sp, swalk->start_seq, swalk->end_seq)) {
   int i;




   tp->rx_opt.num_sacks--;
   for (i = this_sack; i < tp->rx_opt.num_sacks; i++)
    sp[i] = sp[i + 1];
   continue;
  }
  this_sack++, swalk++;
 }
}

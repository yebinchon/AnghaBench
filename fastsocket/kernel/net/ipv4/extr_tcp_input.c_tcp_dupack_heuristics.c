
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int fackets_out; int sacked_out; } ;


 scalar_t__ tcp_is_fack (struct tcp_sock*) ;

__attribute__((used)) static inline int tcp_dupack_heuristics(struct tcp_sock *tp)
{
 return tcp_is_fack(tp) ? tp->fackets_out : tp->sacked_out + 1;
}

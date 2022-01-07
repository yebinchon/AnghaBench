
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int sacked_out; int fackets_out; } ;


 scalar_t__ tcp_is_reno (struct tcp_sock*) ;

__attribute__((used)) static inline int tcp_fackets_out(struct tcp_sock *tp)
{
 return tcp_is_reno(tp) ? tp->sacked_out + 1 : tp->fackets_out;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ sacked_out; scalar_t__ fackets_out; } ;


 int tcp_clear_retrans_partial (struct tcp_sock*) ;

void tcp_clear_retrans(struct tcp_sock *tp)
{
 tcp_clear_retrans_partial(tp);

 tp->fackets_out = 0;
 tp->sacked_out = 0;
}

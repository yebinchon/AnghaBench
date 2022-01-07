
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ sacked_out; } ;



__attribute__((used)) static inline void tcp_reset_reno_sack(struct tcp_sock *tp)
{
 tp->sacked_out = 0;
}

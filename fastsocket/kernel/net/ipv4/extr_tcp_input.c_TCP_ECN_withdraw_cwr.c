
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int ecn_flags; } ;


 int TCP_ECN_DEMAND_CWR ;

__attribute__((used)) static inline void TCP_ECN_withdraw_cwr(struct tcp_sock *tp)
{
 tp->ecn_flags &= ~TCP_ECN_DEMAND_CWR;
}

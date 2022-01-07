
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int ecn_flags; } ;


 int TCP_ECN_OK ;
 int TCP_ECN_QUEUE_CWR ;

__attribute__((used)) static inline void TCP_ECN_queue_cwr(struct tcp_sock *tp)
{
 if (tp->ecn_flags & TCP_ECN_OK)
  tp->ecn_flags |= TCP_ECN_QUEUE_CWR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int TCP_RTO_MAX ;
 int TCP_SYNQ_INTERVAL ;
 int TCP_TIMEOUT_INIT ;
 int inet_csk_reqsk_queue_prune (struct sock*,int ,int ,int ) ;

__attribute__((used)) static void tcp_synack_timer(struct sock *sk)
{
 inet_csk_reqsk_queue_prune(sk, TCP_SYNQ_INTERVAL,
       TCP_TIMEOUT_INIT, TCP_RTO_MAX);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int DCCP_RTO_MAX ;
 int DCCP_TIMEOUT_INIT ;
 int TCP_SYNQ_INTERVAL ;
 int inet_csk_reqsk_queue_prune (struct sock*,int ,int ,int ) ;

__attribute__((used)) static void dccp_response_timer(struct sock *sk)
{
 inet_csk_reqsk_queue_prune(sk, TCP_SYNQ_INTERVAL, DCCP_TIMEOUT_INIT,
       DCCP_RTO_MAX);
}

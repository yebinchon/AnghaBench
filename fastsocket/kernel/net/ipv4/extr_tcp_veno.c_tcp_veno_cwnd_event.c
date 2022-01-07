
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
typedef enum tcp_ca_event { ____Placeholder_tcp_ca_event } tcp_ca_event ;


 int CA_EVENT_CWND_RESTART ;
 int CA_EVENT_TX_START ;
 int tcp_veno_init (struct sock*) ;

__attribute__((used)) static void tcp_veno_cwnd_event(struct sock *sk, enum tcp_ca_event event)
{
 if (event == CA_EVENT_CWND_RESTART || event == CA_EVENT_TX_START)
  tcp_veno_init(sk);
}

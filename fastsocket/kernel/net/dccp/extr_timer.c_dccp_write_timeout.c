
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; int sk_dst_cache; } ;
struct inet_connection_sock {int icsk_retransmits; scalar_t__ icsk_syn_retries; } ;


 scalar_t__ DCCP_PARTOPEN ;
 scalar_t__ DCCP_REQUESTING ;
 int dccp_write_err (struct sock*) ;
 int dst_negative_advice (int *) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int sysctl_dccp_request_retries ;
 int sysctl_dccp_retries1 ;
 int sysctl_dccp_retries2 ;

__attribute__((used)) static int dccp_write_timeout(struct sock *sk)
{
 const struct inet_connection_sock *icsk = inet_csk(sk);
 int retry_until;

 if (sk->sk_state == DCCP_REQUESTING || sk->sk_state == DCCP_PARTOPEN) {
  if (icsk->icsk_retransmits != 0)
   dst_negative_advice(&sk->sk_dst_cache);
  retry_until = icsk->icsk_syn_retries ?
       : sysctl_dccp_request_retries;
 } else {
  if (icsk->icsk_retransmits >= sysctl_dccp_retries1) {
   dst_negative_advice(&sk->sk_dst_cache);
  }

  retry_until = sysctl_dccp_retries2;



 }

 if (icsk->icsk_retransmits >= retry_until) {

  dccp_write_err(sk);
  return 1;
 }
 return 0;
}

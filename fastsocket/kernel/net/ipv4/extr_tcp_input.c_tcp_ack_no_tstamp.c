
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;


 int FLAG_RETRANS_DATA_ACKED ;
 int tcp_valid_rtt_meas (struct sock*,int ) ;

__attribute__((used)) static void tcp_ack_no_tstamp(struct sock *sk, u32 seq_rtt, int flag)
{
 if (flag & FLAG_RETRANS_DATA_ACKED)
  return;

 tcp_valid_rtt_meas(sk, seq_rtt);
}

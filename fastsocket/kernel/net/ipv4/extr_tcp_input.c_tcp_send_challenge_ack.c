
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sock {int dummy; } ;


 scalar_t__ HZ ;
 int LINUX_MIB_TCPCHALLENGEACK ;
 int NET_INC_STATS_BH (int ,int ) ;
 scalar_t__ jiffies ;
 int sock_net (struct sock*) ;
 unsigned int sysctl_tcp_challenge_ack_limit ;
 int tcp_send_ack (struct sock*) ;

__attribute__((used)) static void tcp_send_challenge_ack(struct sock *sk)
{

 static u32 challenge_timestamp;
 static unsigned int challenge_count;
 u32 now = jiffies / HZ;

 if (now != challenge_timestamp) {
  challenge_timestamp = now;
  challenge_count = 0;
 }
 if (++challenge_count <= sysctl_tcp_challenge_ack_limit) {
  NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_TCPCHALLENGEACK);
  tcp_send_ack(sk);
 }
}

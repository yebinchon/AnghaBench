
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sock {int dummy; } ;
struct illinois {scalar_t__ rtt_above; scalar_t__ rtt_low; int beta; int alpha; } ;


 int ALPHA_BASE ;
 int BETA_BASE ;
 scalar_t__ TCP_CA_Loss ;
 struct illinois* inet_csk_ca (struct sock*) ;
 int rtt_reset (struct sock*) ;

__attribute__((used)) static void tcp_illinois_state(struct sock *sk, u8 new_state)
{
 struct illinois *ca = inet_csk_ca(sk);

 if (new_state == TCP_CA_Loss) {
  ca->alpha = ALPHA_BASE;
  ca->beta = BETA_BASE;
  ca->rtt_low = 0;
  ca->rtt_above = 0;
  rtt_reset(sk);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
struct inet_connection_sock {scalar_t__ icsk_ca_state; } ;
struct htcp {scalar_t__ minRTT; scalar_t__ maxRTT; } ;


 scalar_t__ TCP_CA_Open ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 struct htcp* inet_csk_ca (struct sock*) ;
 scalar_t__ msecs_to_jiffies (int) ;

__attribute__((used)) static inline void measure_rtt(struct sock *sk, u32 srtt)
{
 const struct inet_connection_sock *icsk = inet_csk(sk);
 struct htcp *ca = inet_csk_ca(sk);


 if (ca->minRTT > srtt || !ca->minRTT)
  ca->minRTT = srtt;


 if (icsk->icsk_ca_state == TCP_CA_Open) {
  if (ca->maxRTT < ca->minRTT)
   ca->maxRTT = ca->minRTT;
  if (ca->maxRTT < srtt
      && srtt <= ca->maxRTT + msecs_to_jiffies(20))
   ca->maxRTT = srtt;
 }
}

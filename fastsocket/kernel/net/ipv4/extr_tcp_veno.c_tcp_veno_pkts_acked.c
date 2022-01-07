
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct veno {scalar_t__ basertt; int cntrtt; int minrtt; } ;
struct sock {int dummy; } ;
typedef scalar_t__ s32 ;


 struct veno* inet_csk_ca (struct sock*) ;
 int min (int ,scalar_t__) ;

__attribute__((used)) static void tcp_veno_pkts_acked(struct sock *sk, u32 cnt, s32 rtt_us)
{
 struct veno *veno = inet_csk_ca(sk);
 u32 vrtt;

 if (rtt_us < 0)
  return;


 vrtt = rtt_us + 1;


 if (vrtt < veno->basertt)
  veno->basertt = vrtt;




 veno->minrtt = min(veno->minrtt, vrtt);
 veno->cntrtt++;
}

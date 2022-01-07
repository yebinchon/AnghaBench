
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct westwood {int rtt; } ;
struct sock {int dummy; } ;
typedef scalar_t__ s32 ;


 struct westwood* inet_csk_ca (struct sock*) ;
 int usecs_to_jiffies (scalar_t__) ;

__attribute__((used)) static void tcp_westwood_pkts_acked(struct sock *sk, u32 cnt, s32 rtt)
{
 struct westwood *w = inet_csk_ca(sk);

 if (rtt > 0)
  w->rtt = usecs_to_jiffies(rtt);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int inet_csk_clear_xmit_timers (struct sock*) ;

__attribute__((used)) static inline void dccp_clear_xmit_timers(struct sock *sk)
{
 inet_csk_clear_xmit_timers(sk);
}

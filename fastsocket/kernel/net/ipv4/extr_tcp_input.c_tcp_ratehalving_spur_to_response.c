
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int tcp_enter_cwr (struct sock*,int ) ;

__attribute__((used)) static void tcp_ratehalving_spur_to_response(struct sock *sk)
{
 tcp_enter_cwr(sk, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int FLAG_ECE ;
 int tcp_ratehalving_spur_to_response (struct sock*) ;
 int tcp_undo_cwr (struct sock*,int) ;

__attribute__((used)) static void tcp_undo_spur_to_response(struct sock *sk, int flag)
{
 if (flag & FLAG_ECE)
  tcp_ratehalving_spur_to_response(sk);
 else
  tcp_undo_cwr(sk, 1);
}

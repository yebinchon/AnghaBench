
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int __sctp_put_port (struct sock*) ;
 int sctp_local_bh_disable () ;
 int sctp_local_bh_enable () ;

void sctp_put_port(struct sock *sk)
{
 sctp_local_bh_disable();
 __sctp_put_port(sk);
 sctp_local_bh_enable();
}

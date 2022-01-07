
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct inet_connection_sock {TYPE_1__* icsk_ca_ops; } ;
struct TYPE_4__ {int snd_cwnd_stamp; } ;
struct TYPE_3__ {int (* cong_avoid ) (struct sock*,int ,int ) ;} ;


 struct inet_connection_sock* inet_csk (struct sock*) ;
 int stub1 (struct sock*,int ,int ) ;
 TYPE_2__* tcp_sk (struct sock*) ;
 int tcp_time_stamp ;

__attribute__((used)) static void tcp_cong_avoid(struct sock *sk, u32 ack, u32 in_flight)
{
 const struct inet_connection_sock *icsk = inet_csk(sk);
 icsk->icsk_ca_ops->cong_avoid(sk, ack, in_flight);
 tcp_sk(sk)->snd_cwnd_stamp = tcp_time_stamp;
}

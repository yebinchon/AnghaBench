
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tcp_congestion_ops {int (* min_cwnd ) (struct sock const*) ;} ;
struct sock {int dummy; } ;
struct TYPE_4__ {struct tcp_congestion_ops* icsk_ca_ops; } ;
struct TYPE_3__ {int snd_ssthresh; } ;


 TYPE_2__* inet_csk (struct sock const*) ;
 int stub1 (struct sock const*) ;
 TYPE_1__* tcp_sk (struct sock const*) ;

__attribute__((used)) static inline u32 tcp_cwnd_min(const struct sock *sk)
{
 const struct tcp_congestion_ops *ca_ops = inet_csk(sk)->icsk_ca_ops;

 return ca_ops->min_cwnd ? ca_ops->min_cwnd(sk) : tcp_sk(sk)->snd_ssthresh;
}

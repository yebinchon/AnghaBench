
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct bictcp {scalar_t__ loss_cwnd; } ;
struct TYPE_2__ {scalar_t__ snd_ssthresh; } ;


 int bictcp_reset (struct bictcp*) ;
 struct bictcp* inet_csk_ca (struct sock*) ;
 scalar_t__ initial_ssthresh ;
 TYPE_1__* tcp_sk (struct sock*) ;

__attribute__((used)) static void bictcp_init(struct sock *sk)
{
 struct bictcp *ca = inet_csk_ca(sk);

 bictcp_reset(ca);
 ca->loss_cwnd = 0;

 if (initial_ssthresh)
  tcp_sk(sk)->snd_ssthresh = initial_ssthresh;
}

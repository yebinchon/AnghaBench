
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_sndbuf; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int mss_clamp; } ;
struct TYPE_4__ {TYPE_1__ rx_opt; } ;


 int MAX_TCP_HEADER ;
 int TCP_INIT_CWND ;
 int min (int,int ) ;
 int * sysctl_tcp_wmem ;
 TYPE_2__* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_fixup_sndbuf(struct sock *sk)
{
 int sndmem = tcp_sk(sk)->rx_opt.mss_clamp + MAX_TCP_HEADER + 16 +
       sizeof(struct sk_buff);

 sndmem *= TCP_INIT_CWND;
 if (sk->sk_sndbuf < sndmem)
  sk->sk_sndbuf = min(sndmem, sysctl_tcp_wmem[2]);
}

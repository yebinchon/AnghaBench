
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ packets_out; scalar_t__ snd_cwnd; } ;
struct sock {int sk_userlocks; } ;


 int SOCK_SNDBUF_LOCK ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__* sysctl_tcp_mem ;
 int tcp_memory_allocated ;
 scalar_t__ tcp_memory_pressure ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static int tcp_should_expand_sndbuf(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);




 if (sk->sk_userlocks & SOCK_SNDBUF_LOCK)
  return 0;


 if (tcp_memory_pressure)
  return 0;


 if (atomic_read(&tcp_memory_allocated) >= sysctl_tcp_mem[0])
  return 0;


 if (tp->packets_out >= tp->snd_cwnd)
  return 0;

 return 1;
}

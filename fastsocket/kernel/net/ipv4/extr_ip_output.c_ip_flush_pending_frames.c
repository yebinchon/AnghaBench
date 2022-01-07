
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_write_queue; } ;
struct inet_cork {int dummy; } ;
struct TYPE_2__ {int cork; } ;


 int __ip_flush_pending_frames (struct sock*,int *,struct inet_cork*) ;
 TYPE_1__* inet_sk (struct sock*) ;

void ip_flush_pending_frames(struct sock *sk)
{
 __ip_flush_pending_frames(sk, &sk->sk_write_queue,
      (struct inet_cork *)&inet_sk(sk)->cork);
}
